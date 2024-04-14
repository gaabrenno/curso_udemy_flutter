void main(List<String> args) {
  int Function(int, int) soma1 = somaFn;
  print(soma1(20, 97));

  var soma2 = (int x, int y) {
    return x + y;
  };
  print(soma2(20, 10));
}

int somaFn(int a, int b) {
  return a + b;
}
