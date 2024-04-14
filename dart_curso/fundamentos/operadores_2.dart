void main(List<String> args) {
  //Atribuição
  double a = 2;
  a = a + 3;
  a += 3;
  a -= 3;
  a *= 3;
  a /= 3;
  a %= 3;

  print(a);

  //Operadores Relacionais
  print(3 > 2);
  print(3 >= 2);
  print(3 < 4);
  print(3 <= 3);
  print(3 != 3);
  print(3 == '3');

  print(2 + 5 > 3 - 1 && 4 + 7 != 7 - 4);
}
