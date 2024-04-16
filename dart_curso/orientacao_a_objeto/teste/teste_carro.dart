import '../modelo/carro.dart';

void main(List<String> args) {
  var c1 = new Carro(151);

  while(!c1.estaNoLimite()){
    print('${c1.acelerar()} km/h');
  }

  print('O carro está em sua velocidade maxima de ${c1.velocidadeAtual}');

  while(c1.velocidadeAtual>0){
    print('A velocidade atual é ${c1.frear()} km/h');
  }
  print('O carro freou totalmente!');
}