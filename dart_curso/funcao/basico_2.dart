import 'dart:math';

void main(List<String> args) {
  int resultado = somar(5, 7);

  resultado *= 2;
  print('O dobro do resultado é $resultado');

  print('O resultado é ${somarAleatorio()}');

  int resultado2 = nunAleatorioA() + nunAleatorioB();
  print(resultado2);
}

int somar(int a, int b) {
  return a + b;
}

int somarAleatorio() {
  int a = Random().nextInt(11);
  int b = Random().nextInt(11);

  return a + b;
}

int nunAleatorioA() {
  int a = Random().nextInt(50);
  return a;
}

int nunAleatorioB() {
  int b = Random().nextInt(50);
  return b;
}
