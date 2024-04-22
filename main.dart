// Importações dos arquivos que serão utilizados
import 'classes/brinde.dart';
import 'classes/cliente.dart';
import 'classes/enums.dart';
import 'classes/pessoa.dart';
import 'classes/produto.dart';
import 'classes/revendedor.dart';
import 'utils.dart';

/**
 * RECOMENDAÇÕES DA TUTORA
 * 
 * Arquivo de testes e execução do sistema criado.
 * Os testes para o sistema se darão todos através de prints no console.
 * 
 * Abaixo você encontrará o método main, que é o método principal que será executado.
 * 
 * Para executar esse arquivo, digite o seguinte comando no terminal: dart run main.dart
 * Outra alternativa é instalar a extensão Dart no seu VS Code.
 * Isso fará aparecer um botão tipo "play" no canto direito superior. Basta clicar para executar o projeto.
 * 
 * Dentro do método main, vocês encontrarão indicações para criar objetos das classes criadas e executar os métodos criados.
 * Recomenda-se que essas declarações e execuções sejam feitas a medida que vocês forem criando as classes e métodos pedidos,
 * pois isso servirá para testar se o que você fez está funcionando.
 * 
 * Não se prendam apenas aos comentários e recomendações. Façam todos os testes que quiserem fazer.
 * 
 * Existe um método "pularLinha" que foi criado dentro do arquivo utils.
 * Caso queiram, utilizem-no para pular linha entre um bloco de testes e outro,
 * apenas por questões de organização e melhor visualização das saídas.
 * Para executá-lo, basta chamá-lo em qualquer ponto do método main, dessa maneira:
 * pularLinha();
 */

main() {
  /* Declaração de objetos Produto */

  // Declare aqui alguns objetos do tipo Produto...
  // Exemplo: Produto produtoA = Produto("Colônia Floratta Flores Secretas 75ml", 104.90, 3);

  Produto produtoA = Produto(nome: 'Malbec', valor: 179.90, qtdEmEstoque: 5);
  Produto produtoB = Produto(nome: 'Zaad', valor: 269.90, qtdEmEstoque: 40);
  Produto produtoC = Produto(nome: 'Portinari', valor: 169.9, qtdEmEstoque: 0);

  /* Testes da classe Produto */
  print("Testes da classe Produto");
  // Teste o método realizarVenda algumas vezes...
  // Exemplo: produtoA.realizarVenda();
  pularLinha();
  print("Testes realizarVenda");
  produtoA.realizarVenda();
  produtoA.realizarVenda();
  produtoA.realizarVenda();
  produtoB.realizarVenda();
  produtoC.realizarVenda();
  pularLinha();
  // Saída esperada 1: Compra de um produto Colônia Floratta Flores Secretas 75ml realizada com sucesso!
  // Saída esperada 2: No momento não possuímos o produto Colônia Floratta Flores Secretas 75ml em estoque.

  // Teste o método verReceitaGerada algumas vezes...
  // Exemplo: print(produtoA.verReceitaGerada());
  print("Testes verReceitaGerada");
  print(produtoA.verReceitaGerada());
  print(produtoB.verReceitaGerada());
  print(produtoC.verReceitaGerada());

  pularLinha();

  /* ------------------------------------------ */

  /* Declaração de objetos Pessoa */

  // Declare aqui alguns objetos do tipo Pessoa...
  // Exemplo: Pessoa pessoaA = Pessoa('Maria', '12345678900', 1994);

  Pessoa pessoaA = Pessoa(
    nome: 'Matheus',
    dataDeNascimento: DateTime(2000, 12, 01),
    cpf: '12345678900',
    genero: Genero.masculino,
  );
  Pessoa pessoaB = Pessoa(
    nome: 'Maria',
    dataDeNascimento: DateTime(1999, 11, 08),
    cpf: '12345678900',
    genero: Genero.feminino,
  );

  Pessoa pessoaC = Pessoa(
    nome: 'Jose',
    dataDeNascimento: DateTime(1980, 01, 15),
    cpf: '12345678900',
    genero: Genero.outro,
  );

  Pessoa pessoaD = Pessoa(
    nome: 'Marcos',
    dataDeNascimento: DateTime(2010, 10, 25),
    cpf: '12345678900',
    genero: Genero.masculino,
  );

  /* Testes da classe Pessoa */
  print("Testes da classe Pessoa");
  // Teste o método falar algumas vezes...
  // Exemplo: pessoaA.falar('Oi, tudo bem?');
  // Saída esperada: Maria diz: Oi, tudo bem?
  print("Testes falar");
  pessoaA.falar('Oi, tudo bem?');
  pessoaB.falar('Estou bem e você?');
  pessoaC.falar('Qual o melhor grupo do desenvolve?');
  pessoaA.falar('É o grupo Dartmode, eles são dedicados.');
  pessoaA.falar('Sim, estão de parabéns');
  pessoaD.falar('Oi pessoal sobre o que estão falando?');
  pularLinha();
  // Teste o método maioridade algumas vezes...
  // Exemplo: pessoaA.maioridade();
  // Saída esperada 1: Maria tem 30 anos, portanto é maior de idade.
  // Saída esperada 2: João tem 14 anos, portanto é menor de idade.
  print("Testes maiorIdade");
  pessoaA.maiorIdade();
  pessoaB.maiorIdade();
  pessoaC.maiorIdade();
  pessoaD.maiorIdade();

  pularLinha();
  print("Testes termometroDoHumor");
  pessoaA.termometroDoHumor(
      Humor.feliz); // "Que bom que você está feliz hoje, Matheus!"
  pessoaB.termometroDoHumor(Humor
      .triste); // "Sinto muito que você esteja triste, Maria. Posso te ajudar em algo?"
  pessoaC.termometroDoHumor(
      Humor.ansiosa); // "Calma, Jose. Respire fundo e tudo vai dar certo."

  pularLinha();
  /* ------------------------------------------ */

  print("Testes da classe Revendedor");
  Revendedor revendedorA = Revendedor(
      nome: 'Matheus Queiroz',
      dataDeNascimento: DateTime(2000, 12, 01),
      cpf: '0121212121',
      matricula: '1234',
      genero: Genero.masculino);

  Revendedor revendedorB = Revendedor(
      nome: 'Thais',
      dataDeNascimento: DateTime(1990, 05, 01),
      cpf: '51651651645',
      matricula: '1223',
      genero: Genero.feminino);

  Revendedor revendedorC = Revendedor(
      nome: 'Tereza',
      dataDeNascimento: DateTime(1960, 01, 01),
      cpf: '0121212121',
      matricula: '1343',
      genero: Genero.outro);
  print("Testes falar");
  revendedorA.falar('Olá pessoal estão vendendo bem?');
  revendedorB.falar('Estou vendendo muito bem e você Tereza?');
  revendedorC.falar('Também estou vendendo bem.');
  pularLinha();
  print("Testes venderProduto");
  revendedorA.venderProduto(produtoA);
  revendedorA.venderProduto(produtoB);
  revendedorA.venderProduto(produtoC);
  pularLinha();
  print("Testes calcularLucro");
  print(revendedorA.calcularLucro());

  pularLinha();

  print("Testes da classe Cliente");
  Cliente clienteA = Cliente(
    nome: 'Marcos',
    dinheiro: 2000.50,
    dataDeNascimento: DateTime(1994, 05, 06),
    cpf: '122345454454',
    genero: Genero.masculino,
  );

  Cliente clienteB = Cliente(
    nome: 'Mario',
    dinheiro: 10000000,
    dataDeNascimento: DateTime(2000, 10, 01),
    cpf: '154654655216516',
    genero: Genero.outro,
  );

  Cliente clienteC = Cliente(
    nome: 'Julia',
    dataDeNascimento: DateTime(2001, 02, 20),
    cpf: '64565456456465',
    genero: Genero.feminino,
  );
  print("Testes falar");
  clienteA.falar('Quero comprar um perfume');
  revendedorA.falar('Fale com meu minha amiga Thais');
  revendedorB.falar('Estou aqui para te atender');
  clienteA.falar('Oi, como posso ajudar?');
  clienteB.falar('Também quero comprar.');
  clienteC.falar('Já comprei com ela muito boa revendedora.');

  pularLinha();
  print(
      "Testes adicionarDineiro, comprarProduto, verResumo, verProdutosComprados");
  clienteC.adicionarDineiro(200.33);
  clienteC.adicionarDineiro(150.55);
  clienteC.adicionarDineiro(10000.00);
  pularLinha();

  clienteC.comprarProduto(produtoB, revendedorB);

  pularLinha();

  clienteC.comprarProduto(produtoA, revendedorB);

  pularLinha();

  clienteC.comprarProduto(produtoB, revendedorB);

  pularLinha();

  clienteC.comprarProduto(produtoA, revendedorB);

  pularLinha();

  revendedorB.verResumo();

  pularLinha();

  clienteC.verResumo();

  pularLinha();

  clienteC.verProdutosComprados();

  pularLinha();

  print("Testes da classe Brinde");

  Brinde brinde1 =
      Brinde(nome: 'Colônia Egeo 10ml', pontosNecessarios: 1, qtdEmEstoque: 5);
  Brinde brinde2 = Brinde(
      nome: 'Sabonete Cuide-Se Bem Beijinho',
      pontosNecessarios: 1,
      qtdEmEstoque: 5);
  Brinde brinde3 = Brinde(
      nome: 'Colônia Floratta Flores Secretas 75m',
      pontosNecessarios: 1,
      qtdEmEstoque: 3);
  Brinde brinde4 = Brinde(
      nome: 'Hidratante corporal Glamour',
      pontosNecessarios: 5,
      qtdEmEstoque: 3);

  print("Testes consultarPontosNecessarios");
  brinde1.consultarPontosNecessarios();
  brinde2.consultarPontosNecessarios();
  brinde3.consultarPontosNecessarios();
  pularLinha();

  print("Testes trocarPontosPorBrinde");
  print('Pontos do cliente: ${clienteC.pontos}'); // 4 pontos
  clienteC.trocarPontosPorBrinde(
      brinde4); // Você não possui pontos suficientes para trocar pelo brinde Hidratante corporal Glamour.
  clienteC.trocarPontosPorBrinde(
      brinde3); // Troca realizada! Você ganhou um(a) Colônia Floratta Flores Secretas 75m.
  clienteC.trocarPontosPorBrinde(
      brinde2); // Troca realizada! Você ganhou um(a) Sabonete Cuide-Se Bem Beijinho.
  clienteC.trocarPontosPorBrinde(
      brinde3); // Troca realizada! Você ganhou um(a) Colônia Floratta Flores Secretas 75m.
  clienteC.trocarPontosPorBrinde(
      brinde1); // Troca realizada! Você ganhou um(a) Colônia Egeo 10ml.
  clienteC.trocarPontosPorBrinde(
      brinde1); // Você não possui pontos suficientes para trocar pelo brinde Colônia Egeo 10ml.
  pularLinha();
  print("Testes verBrindes");
  clienteC
      .verBrindes(); // "Brindes recebidos por Maria: Colônia Egeo 10ml Sabonete Luxurious"
}
