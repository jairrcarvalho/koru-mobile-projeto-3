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
    if (qtdEmEstoque > 0) {
      qtdVendida += 1;
      qtdEmEstoque -= 1;

      print('Compra de um(a) produto $nome realizada com sucesso!');
      print('Quantidade em estoque: $qtdEmEstoque');
    }
    if (qtdEmEstoque == 0) {
      throw ("No momento não possuímos o produto $nome em estoque.");
    }
    if (qtdEmEstoque < 0) {
      throw ("Quantidade inválida.");
    }
  }

  double verReceitaGerada() {
    return this.valor * this.qtdVendida;
  }

  void verReceitaGeradaFormatada() {
    double receita = this.valor * this.qtdVendida;
    return print(
        "Produto $nome: R\$ ${receita.toStringAsFixed(2).replaceAll('.', ',')} de receita gerada.");
  }

  @override
  String toString() {
    return 'Produto: $nome | Valor: ${valor.toStringAsFixed(2).replaceAll('.', ',')} | Estoque: $qtdEmEstoque';
  }
}
