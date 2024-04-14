import 'dart:io';

void main(List<String> args) {
//Operadores Unários
  stdout.write('Esta choventod? (s/N)');
  bool estaChovendo = stdin.readLineSync() == 's';

  stdout.write('Esta frio? (s/N)');
  bool estaFrio = stdin.readLineSync() == 's';

  //String resultado = estaChovendo || estaFrio ? 'Ficar em casa ' : 'Sair;';
  String resultado = estaChovendo && estaFrio ? 'É melhor f icar em casa!' : 'Bora sair!!!';
  print (resultado);

  print(estaChovendo && estaFrio ? 'Azarado!' : 'Sortudo!');
}
