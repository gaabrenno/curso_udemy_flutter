import 'dart:io';

void main(List<String> args) {
  var digitado = '';

  // while (digitado != 'sair') {
  //   stdout.write('Digite algo ou sair: ');
  //   digitado = stdin.readLineSync().toString();
  // }
  // print('Fim!');

  do {
    stdout.write('Digite algo ou sair: ');
    digitado = stdin.readLineSync().toString();
  } while (digitado != 'sair');
  print('Fim!');
}
