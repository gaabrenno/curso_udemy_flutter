import 'dart:async';
import 'dart:io';

void main(List<String> args) {
  String nome = 'João';
  String status = ' aprovado';
  double nota = 9.2;

  String frase1 = nome + ' está ' + status + ' pq tirou nota ' + nota.toString() + '!';
  String frase2 = '$nome está $status pq tirou nota $nota!';

  print(frase1);
  print(frase2);

  print('1 + 1 = ${1 + 1}');
}
