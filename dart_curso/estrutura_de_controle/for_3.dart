void main(List<String> args) {
  Map<String, double> notas = {
    'João Pedro': 9.1,
    'Pedro Algusto': 2.1,
    'Maria Algusta': 3,
    'Ana Ribeiro': 5.5,
    'Mateus Prado': 10,
  };

  for (String nome in notas.keys) {
    print('O nome do aluno é: $nome');
  }

  for (double nota in notas.values) {
    print('A nota do aluno é: $nota.');
  }

  for (String nome in notas.keys) {
    print('O nome do aluno é: $nome e a nota é ${notas[nome]}');
  }

  for (var registro in notas.entries){
    //print('O aluno ${registro.key} tirou a nota ${registro.value}');
    if(registro.value>=7){
      print('O aluno ${registro.key} tirou a nota ${registro.value} e esta aprovado!');
    }else{
      print('O aluno ${registro.key} tirou a nota ${registro.value} e esta reprovado!');
    }
  }
}
