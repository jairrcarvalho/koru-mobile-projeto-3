import 'enums.dart';
import 'pessoa.dart';
import 'produto.dart';

class Revendedor extends Pessoa {
  final String matricula;
  List<String> produtosVendidos = [];
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
    produto.realizarVenda();
    produtosVendidos.add(produto as String);
  }
}
