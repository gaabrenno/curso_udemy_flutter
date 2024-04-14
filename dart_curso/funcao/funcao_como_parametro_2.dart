import 'dart:math';

import 'funcao_como_parametro_1.dart';

void exevutarPor(int qtd, Function(String) fn, String valor){
  for(int i = 0; i<qtd; i++){
    fn(valor);
  }
}

void main(List<String> args) {
  exevutarPor(10, print, 'Execultar X vezes');
}