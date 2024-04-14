import 'dart:io';

void main(List<String> args) {
  //Área da circunferencia = Pi * raio * raio
  
  const pi = 3.14159;

  stdout.write('Informe o valor do raio: ');

  String entradaDoUsuario = stdin.readLineSync()!;

  final raio = double.parse(entradaDoUsuario);

  var area = pi * raio * raio;

  print('O valor da area é $area');

}