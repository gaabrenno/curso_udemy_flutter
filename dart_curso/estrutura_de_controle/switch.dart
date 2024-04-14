import 'dart:convert';
import 'dart:math';

void main(List<String> args) {
  var nota = Random().nextInt(11);

  print(nota);

  switch (nota) {
    case 10:
    case 9:
      print('Quadro de honra! \nParabens!');
      break;
    case 8:
    case 7:
      print('Aprovado! \nParabens!');
      break;
    case 6:
    case 5:
      print('Recuperação \nVocê ainda consegue!');
      break;
    case 4:
    case 3:
    case 2:
    case 1:
    case 0:
      print('Reprovado! \nQuem sabe na proxima');
      break;
    default:
      print('Nota invalida!');
  }
}
