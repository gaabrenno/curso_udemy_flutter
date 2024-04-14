void main(List<String> args) {
  final lista = ['Ana','Lia','Gui'];
  // lista = ['Banana','Maça'];

  lista.add('Rebeca');
  print(lista);
}

/*Quando atribuimos um final não quer dizer que o conteudo é imutavel, 
por exemplo em uma lista podemos utilizarr um add ou um remove para adicionar ou excluir um valor na lista
ao contrario de uma const que é lide em tempo de compilação e se torna imutavel a não ser que 
seja atribuido um valor completamente novo a lista (ex: var list = const [1,2,3]; list = [3,2,1])*/
