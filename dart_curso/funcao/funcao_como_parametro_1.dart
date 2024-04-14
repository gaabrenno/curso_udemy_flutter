import 'dart:math';

void executar(Function fnPar, Function fnImpar){
  var nunSorteado = Random().nextInt(10);
  print('O valor sorteado foi: $nunSorteado');
  nunSorteado % 2 == 0 ? fnPar() : fnImpar();
}

void main(List<String> args) {
  var minhaFnPar = () => print('O valor é Par!!');
  var minhaFnImpar = () => print('O valor é impar!!');

  executar(minhaFnPar, minhaFnImpar);
}