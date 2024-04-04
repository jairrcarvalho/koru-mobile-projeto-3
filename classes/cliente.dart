import 'enums.dart';
import 'pessoa.dart';
import 'produto.dart';

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

  void comprarProduto() {}
}
