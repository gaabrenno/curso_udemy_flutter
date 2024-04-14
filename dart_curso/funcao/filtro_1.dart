void main(List<String> args) {
  var notas = [8.2, 7.1, 6.2, 4.4, 3.9, 8.8, 5.1];

  var notasBoas = [];
  for(var i in notas){
    if(i >= 7){
      notasBoas.add(i);
    }
  }
  print(notas);
  print(notasBoas);
}