import 'dart:math';

void main(List<String> args) {
  int n1 = numerosAleatorios(100);
  int n2 = numerosAleatorios();

  print(n1);
  print(n2);

  diaMesAno(10, 12, 2024);
  diaMesAno(10, 12);
  diaMesAno(10);
}

int numerosAleatorios([int maximo = 11]) {
  return Random().nextInt(maximo);
}

diaMesAno(int dia, [int mes = 1, int ano = 1970]) {
  print('$dia/$mes/$ano');
}
