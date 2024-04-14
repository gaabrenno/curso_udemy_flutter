/*
    -List
    -Set
    -Map
*/

void main(List<String> args) {
  List aprovados = ['Ana', 'Carlos', 'Daniel', 'Rafael'];
  print (aprovados is List);
  print (aprovados);
  print(aprovados.elementAt(2));
  print(aprovados[0]);
  print(aprovados.length);

  Map telefones = {
    'João':'+55 (62) 91234-5678',
    'Maria':'+55 (11) 93606-8922',
    'Pedro': '+55 (21) 98765-4321',
    'José':'+55 (62) 91234-5678',
      };
  print (telefones is Map);
  print (telefones);
  print(telefones['João']);
  print(telefones.length);
  print(telefones.values);
  print(telefones.keys);
  print(telefones.entries);

  var times = {'Vasco', 'Fortaleza','São Paulo','Flamengo'};
  print(times is Set);
  print(times.length);
  times.add('Palmeiras');
  times.add('Palmeiras');
  print(times.length);
  print(times.contains('Vasco'));
  
}