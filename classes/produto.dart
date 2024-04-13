class Produto {
  final String nome;
  double valor;
  int qtdEmEstoque;
  int qtdVendida = 0;

  Produto({
    required this.nome,
    required this.valor,
    required this.qtdEmEstoque,
  });

 void realizarVenda() {
    try {
      if (qtdEmEstoque > 0) {
        qtdVendida += 1;
        qtdEmEstoque -= 1;

      print('Compra de um(a) produto $nome realizada com sucesso!');
      print('Quantidade em estoque: $qtdEmEstoque');
      }
      if (qtdEmEstoque == 0) {
        print("No momento não possuímos o produto $nome em estoque.");
      }
      if (qtdEmEstoque < 0) {
        print("Quantidade inválida.");
      }
    } catch (e) {
      throw e;
    }
  }

  double verReceitaGerada() {
    return this.valor * this.qtdVendida;
  }
}
