import 'enums.dart';

class Pessoa {
  final String nome;
  late int idade;
  final String cpf;
  final DateTime dataDeNascimento;
  final Genero genero;

  Pessoa({
    required this.genero,
    required this.nome,
    required this.dataDeNascimento,
    required this.cpf,
  }) {
    idade = _calcularIdade();
  }

  void maiorIdade() {
    if (idade >= 18) {
      print('$nome tem $idade anos, portanto é maior de idade.');
    } else {
      print('$nome tem $idade anos, portanto é menor de idade.');
    }
  }

  void falar(String mensagem) {
    print("$nome diz: $mensagem");
  }

  int _calcularIdade() {
    final DateTime dataAtual = DateTime.now();
    int idade = dataAtual.year - dataDeNascimento.year;
    if (dataAtual.month < dataDeNascimento.month ||
        (dataAtual.month == dataDeNascimento.month &&
            dataAtual.day < dataDeNascimento.day)) {
      idade--;
    }
    return idade;
  }

  void termometroDoHumor(Humor humor) {
    switch (humor) {
      case Humor.feliz:
        print('Que bom que você está feliz hoje, $nome!');
        break;
      case Humor.triste:
        print(
            'Sinto muito que você esteja triste, $nome. Posso te ajudar em algo?');
        break;
      case Humor.ansiosa:
        print('Calma, $nome. Respire fundo e tudo vai dar certo.');
        break;
      // ... (adicione outros casos para os outros humores)
      default:
        print('Não entendi o seu humor $nome. Tente novamente.');
    }
  }

  @override
  String toString() {
    return 'Nome: $nome | Idade: $idade | CPF: $cpf | Data de Nascimento: $dataDeNascimento | Gênero: $genero';
  }
}
