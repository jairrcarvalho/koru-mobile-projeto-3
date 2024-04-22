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

  void realizarTroca() {
    if (qtdEmEstoque > 0) {
      qtdEmEstoque--;
      print('Troca realizada! Você ganhou um(a) $nome.');
    } else {
      throw 'No momento não possuímos o produto $nome em estoque.';
    }
  }

  @override
  String toString() {
    return 'Brinde: $nome | Pontos: $pontosNecessarios | Estoque: $qtdEmEstoque';
  }
}
