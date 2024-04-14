import 'dart:io';

void main(List<String> args) {
  var notas = [8.9, 9.3, 7.8, 6.9, 9.1];
  for (var nota in notas) {
    print('O valor da nota é $nota.');
  }

  var coordenadas = [
    [19, 3],
    [91, 32],
    [9, 1],
    [9, 3],
  ];
  for (var coordenada in coordenadas) {
    for (var ponto in coordenada) {
      print('O valor do ponto é: $ponto.');
    }
  }
}
