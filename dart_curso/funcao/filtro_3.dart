List<E> filtrar <E>(List<E> lista, bool Function(E) fn){
  List<E> listaFiltrada =[];
  for(E elementos in lista){
    if(fn(elementos)) {
      listaFiltrada.add(elementos);
    }
  }
  return listaFiltrada;
}

void main(List<String> args) {
  var notas = [8.2, 7.1, 6.2, 4.4, 3.9, 8.8, 5.1];
  var boasNotasFn = (double nota) => nota>= 7.5;
  
  var somentNotasBoas = filtrar<double> (notas, boasNotasFn);
  print(somentNotasBoas);

  var nomes = ['Ana', 'Bia', 'Rebeca', 'Gui', 'João'];
  var nomesGrandesFn = (String nome) => nome.length>= 5;
  print(filtrar(nomes, nomesGrandesFn));

}