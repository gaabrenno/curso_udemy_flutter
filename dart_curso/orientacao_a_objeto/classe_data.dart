class Data {
  late int dia;
  late int mes;
  late int ano;

/*   Data(int dia, int mes, int ano) {
    this.dia = dia;
    this.mes = mes;
    this.ano = ano;
  } */

  /* Data(this.dia, this.mes, this.ano); */
  Data([this.dia = 1, this.mes = 1, this.ano = 1970]);

  String obterFormatada() {
    return '$dia/$mes/$ano';
  }

  String toString() {
    return obterFormatada();
  }
}

void main(List<String> args) {
  var dataAniversario = new Data(3, 10, 2020);

  Data dataCompra = Data(1, 1, 1970);
  // dataCompra.dia = 23;
  dataCompra.mes = 12;
  dataCompra.ano = 2023;

  String d1 = dataAniversario.obterFormatada();

  print('A data do aniversario é $d1');

  print(dataCompra);
  print(dataCompra.toString());

  print(new Data());
  print(new Data(31));
  print(new Data(31, 12));
  print(new Data(31, 12, 2023));
}
