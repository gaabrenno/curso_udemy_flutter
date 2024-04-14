void main(List<String> args) {
    var notas = [8.2, 7.1, 6.2, 4.4, 3.9, 8.8, 5.1];

bool Function(double) notasBoasFn = (double notas)=> notas >=7;
bool Function(double) notasMuitoBoasFn = (double notas)=> notas >=7;

var notasBoas = notas.where(notasBoasFn);
var notasMuitoBoas = notas.where(notasMuitoBoasFn);
print(notas);
print(notasBoas);
print(notasMuitoBoas);
}