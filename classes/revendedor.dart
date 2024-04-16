import 'enums.dart';
import 'pessoa.dart';
import 'produto.dart';

class Revendedor extends Pessoa {
  final String matricula;
  List<Produto> produtosVendidos = [];
  double porcentagemLucro = 0.1;

  Revendedor({
    required String nome,
    required DateTime dataDeNascimento,
    required String cpf,
    required this.matricula,
    required Genero genero,
  }) : super(
            nome: nome,
            dataDeNascimento: dataDeNascimento,
            cpf: cpf,
            genero: genero);

  @override
  void falar(String mensagem) {
    String prefixo;
    switch (genero) {
      case Genero.masculino:
        prefixo = 'Revendedor';
        break;
      case Genero.feminino:
        prefixo = 'Revendedora';
        break;
      case Genero.outro:
        prefixo = 'Pessoa revendedora';
        break;
    }
    print('$prefixo $nome diz: $mensagem');
  }

  void venderProduto(Produto produto) {
    try {
      produto.realizarVenda();
      produtosVendidos.add(produto);
    } catch (e) {
      throw e;
    }
  }

  double calcularTotalVendido() {
    double totalVendido = 0.0;
    for (Produto produto in produtosVendidos) {
      totalVendido += produto.valor * produto.qtdVendida;
    }
    return totalVendido;
  }

  double calcularLucro() {
    double totalLucro = 0.0;
    totalLucro = calcularTotalVendido() * porcentagemLucro;
    return totalLucro;
  }

  void verResumo() {
    double totalVendido = calcularTotalVendido();
    double lucro = calcularLucro();

    double media = totalVendido / produtosVendidos.length;

    try {
      if (media.isNaN) {
        throw FormatException('Não tem como calcular a média sendo 0.');
      }
    } catch (e) {
      media = 0.0;
      print('Erro ao calcular a média: $e');
    }
    print(
      'O total vendido por $nome foi ${totalVendido.toStringAsFixed(2)} reais e a média aritmética de valor dos produtos vendidos é ${media.toStringAsFixed(2)} reais. O lucro recebido foi de ${lucro.toStringAsFixed(2)} reais.',
    );
  }
}
