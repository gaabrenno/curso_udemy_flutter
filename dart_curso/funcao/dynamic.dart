void main(List<String> args) {
  juntar(1, 9);
  juntar('Buongiorno', ' a tutti voi!');

  String resultado = juntar('O valor de PI é ', 3.14159);
  print (resultado.toLowerCase());
  print (resultado.codeUnits);
  print (resultado.hashCode);
}

String juntar(dynamic a, b){
  print(a.toString() + b.toString());
  return a.toString() + b.toString();
}