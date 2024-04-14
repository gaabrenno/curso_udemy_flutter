void main(List<String> args) {
  double nota = 6.99.roundToDouble();
  print(nota);

  print('Texto'.toUpperCase());

  String s1 = 'Gabriel Brennno';
  String s2 = s1.substring(0,7);
  String s3 = s2.toUpperCase();
  String s4 = s3.padRight(15,'!');

  print(s4);

  String s5= 'Gabriel Brenno'.substring(0,7).toUpperCase().padRight(15,'!');
  print(s5);

}