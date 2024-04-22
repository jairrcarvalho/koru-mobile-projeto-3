import 'cliente.dart';

class Brinde {
  final String nome;
  final int pontosNecessarios;
  int qtdEmEstoque;

  Brinde({
    required this.nome,
    required this.pontosNecessarios,
    required this.qtdEmEstoque,
  });

  void consultarPontosNecessarios() {
    print('Para ganhar um(a) $nome você precisa de $pontosNecessarios pontos.');
  }

  void realizarTroca(Cliente cliente) {
    if (qtdEmEstoque > 0) {
      cliente.pontos -= pontosNecessarios;
      qtdEmEstoque--;
      print('Troca realizada! Você ganhou um(a) $nome.');
    } else {
      print('No momento não possuímos o produto $nome em estoque.');
    }
  }

  @override
  String toString() {
    return 'Brinde: $nome | Pontos: $pontosNecessarios | Estoque: $qtdEmEstoque';
  }
}
