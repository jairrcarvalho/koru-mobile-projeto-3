import 'enums.dart';
import 'pessoa.dart';
import 'produto.dart';
import 'revendedor.dart';

class Cliente extends Pessoa {
  double dinheiro;
  List<Produto> produtosComprados = [];

  Cliente({
    this.dinheiro = 0,
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
    try {
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
        throw Exception(
            "$nome não possui dinheiro suficiente para comprar o produto ${produto.nome}.");
      }
    } catch (e) {
      print("Erro ao efetuar a comprar: $e");
    }
  }

  double calcularMediaProdutosComprados() {
    if (produtosComprados.isEmpty) {
      return 0;
    }

    double soma = 0;
    for (var produto in produtosComprados) {
      soma += produto.valor;
    }

    return double.parse((soma / produtosComprados.length).toStringAsFixed(2));
  }

  double calcularTotalGasto() {
    double total = 0.0;
    for (var produto in produtosComprados) {
      total += produto.valor;
    }
    return double.parse(total.toStringAsFixed(2));
  }

  void verResumo() {
    print(
        'O Total gasto por $nome foi de ${calcularTotalGasto()} reais e a média de valor dos produtos comprados é ${calcularMediaProdutosComprados()} reais.');
  }

  void ordenarProdutosComprados() {
    produtosComprados.sort((a, b) => a.nome.compareTo(b.nome));
  }

  void verProdutosComprados() {
    ordenarProdutosComprados();

    print('Produtos comprados por $nome:');
    for (var produto in produtosComprados) {
      print('- Produto: ${produto.nome}, Valor: ${produto.valor} reais');
    }
  }
}
