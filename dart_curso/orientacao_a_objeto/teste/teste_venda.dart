import '../modelo/cliente.dart';
import '../modelo/produto.dart';
import '../modelo/venda.dart';
import '../modelo/venda_item.dart';

void main(List<String> args) {
  var venda = Venda(
    cliente: Cliente(
      nome: 'Gabriel Brenno',
      cpf: '056.817.731-24',
    ),
    itens: <VendaItem>[
      VendaItem(
        quantidade: 100,
        produto: Produto(
          codigo: 1,
          nome: 'Kindle 10',
          preco: 510.98,
          desconto: 0.35,
        ),
      ),
      VendaItem(
        quantidade: 75,
        produto: Produto(codigo: 2, nome: 'Case', preco: 99.00, desconto: 0.25),
      ),
      VendaItem(
        quantidade: 25,
        produto: Produto(codigo: 3, nome: 'Carregador', preco: 99.99, desconto: 0.0),
      )
    ],
  );

  print('O valor total da venda é: R\$${venda.valorTotal}');
  print('O primeiro produto é ${venda.itens[0].produto?.nome}');
  print('O segundo produto é ${venda.itens[1].produto?.nome}');
  print('O terceiro produto é ${venda.itens[2].produto?.nome}');
  print('O CPF do cliente é ${venda.cliente.cpf}');
}
