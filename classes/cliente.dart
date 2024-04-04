import 'enums.dart';
import 'pessoa.dart';
import 'produto.dart';

class Cliente extends Pessoa {
  final double? dinheiro;
  List<Produto> produtosComprados = [];

  Cliente({
    required String nome,
    required DateTime dataDeNascimento,
    required String cpf,
    required Genero genero,
    this.dinheiro,
  }) : super(
          nome: nome,
          dataDeNascimento: dataDeNascimento,
          cpf: cpf,
          genero: genero,
        );

  @override
  void falar(String mensagem) {}

  void adicionarDinheiro() {}

  void comprarProduto(Produto produto, Revendedor revendedor) {
    late double? dinheiroPreCompra = dinheiro;
    if (dinheiro != null && dinheiro! >= produto.valor) {
      revendedor.venderProduto();
      dinheiro = dinheiroPreCompra! - produto.valor;
      String valorArredondado = produto.valor.toStringAsFixed(2);
      String dinheiroPreCompraArredondado =
          dinheiroPreCompra.toStringAsFixed(2);
      String dinheiroArredondado = dinheiro!.toStringAsFixed(2);
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
