import 'dart:developer';

void main(List<String> args) {
  var alunos = [
    {'nome': 'Alfredo', 'nota': 9.9},
    {'nome': 'Wilson', 'nota': 9.3},
    {'nome': 'Mariana', 'nota': 8.7},
    {'nome': 'Guilherme', 'nota': 8.1},
    {'nome': 'Ana', 'nota': 7.6},
    {'nome': 'Ricardo', 'nota': 6.8},
  ];

  String Function(Map) pegarApenasONome = (alunos) => alunos['nome'];
  int Function(String) qtdDeLetras = (texto) => texto.length;
  int Function(int) dobro = (numero) {
    return numero * 2;
  };

  var resultado = alunos.map(pegarApenasONome).map(qtdDeLetras).map(dobro);
  print(resultado
  
  
  );
}
