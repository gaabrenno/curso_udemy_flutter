void main(List<String> args) {
  
  saudarPessoa(nome: 'João', idade: 33);
  saudarPessoa(idade: 97, nome: 'Simpronia');

  imprimirData(dia: 11, mes: 04, ano: 2024);
}

saudarPessoa({required String nome, required int idade}){
  print('Olá $nome! Nem parece que você tem $idade anos!');
}

imprimirData({int dia = 1, int mes = 1, int ano = 1970}){
  print('$dia/$mes/$ano');
}
