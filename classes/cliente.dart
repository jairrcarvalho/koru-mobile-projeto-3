import 'enums.dart';
import 'pessoa.dart';
import 'produto.dart';
import 'revendedor.dart';

class Cliente extends Pessoa {
  double dinheiro = 0;
  List<Produto> produtosComprados = [];

  Cliente(
    this.dinheiro, {
    required String nome,
    required DateTime dataDeNascimento,
    required String cpf,
    required Genero genero,
  }) : super(
          nome: nome,
          dataDeNascimento: dataDeNascimento,
          cpf: cpf,
          genero: genero,
        );

  @override
  void falar(String mensagem) {
    print("Cliente $nome diz: $mensagem.");
  }

  void adicionarDineiro(double valor) {
    dinheiro += valor;
    print("$nome possui agora $dinheiro");
  }

  void comprarProduto(Produto produto, Revendedor revendedor) {
    late double? dinheiroPreCompra = dinheiro;
    if (dinheiro >= produto.valor) {
      revendedor.venderProduto(produto);
      dinheiro = dinheiroPreCompra - produto.valor;
      String valorArredondado = produto.valor.toStringAsFixed(2);
      String dinheiroPreCompraArredondado =
          dinheiroPreCompra.toStringAsFixed(2);
      String dinheiroArredondado = dinheiro.toStringAsFixed(2);
      produtosComprados.add(produto);
      print("Valor do produto: R\$ " + valorArredondado);
      print("Saldo do cliente: R\$ " + dinheiroPreCompraArredondado);
      print("Saldo do cliente após a compra: R\$ " + dinheiroArredondado);
      for (var produto in produtosComprados) {
        print("Produto comprado: ${produto.nome}");
      }
    } else {
      print(
          "$nome não possui dinheiro suficiente para comprar o produto ${produto.nome}.");
    }
  }
}
