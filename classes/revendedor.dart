import 'enums.dart';
import 'pessoa.dart';

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
  void falar(String mensagem) {}

  void venderProduto() {}
}
