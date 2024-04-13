// Importações dos arquivos que serão utilizados
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

  // Teste o método realizarVenda algumas vezes...
  // Exemplo: produtoA.realizarVenda();

  produtoA.realizarVenda();
  produtoA.realizarVenda();
  produtoA.realizarVenda();
  produtoB.realizarVenda();
  produtoC.realizarVenda();

  // Saída esperada 1: Compra de um produto Colônia Floratta Flores Secretas 75ml realizada com sucesso!
  // Saída esperada 2: No momento não possuímos o produto Colônia Floratta Flores Secretas 75ml em estoque.

  // Teste o método verReceitaGerada algumas vezes...
  // Exemplo: print(produtoA.verReceitaGerada());

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

  // Teste o método falar algumas vezes...
  // Exemplo: pessoaA.falar('Oi, tudo bem?');
  // Saída esperada: Maria diz: Oi, tudo bem?

  pessoaA.falar('Oi, tudo bem?');
  pessoaB.falar('Estou bem e você?');
  pessoaC.falar('Qual o melhor grupo do desenvolve?');
  pessoaA.falar('É o grupo Dartmode, eles são dedicados.');
  pessoaA.falar('Sim, estão de parabéns');
  pessoaD.falar('Oi pessoal sobre o que estão falando?');

  // Teste o método maioridade algumas vezes...
  // Exemplo: pessoaA.maioridade();
  // Saída esperada 1: Maria tem 30 anos, portanto é maior de idade.
  // Saída esperada 2: João tem 14 anos, portanto é menor de idade.

  pessoaA.maiorIdade();
  pessoaB.maiorIdade();
  pessoaC.maiorIdade();
  pessoaD.maiorIdade();

  pularLinha();

  /* ------------------------------------------ */

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

  revendedorA.falar('Olá pessoal estão vendendo bem?');
  revendedorB.falar('Estou vendendo muito bem e você Tereza?');
  revendedorC.falar('Também estou vendendo bem.');

  revendedorA.venderProduto(produtoA);
  revendedorA.venderProduto(produtoB);
  revendedorA.venderProduto(produtoC);

  print(revendedorA.calcularLucro());

  pularLinha();

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

  clienteA.falar('Quero comprar um perfume');
  revendedorA.falar('Fale com meu minha amiga Thais');
  revendedorB.falar('Estou aqui para te atender');
  clienteA.falar('Oi, como posso ajudar?');
  clienteB.falar('Também quero comprar.');
  clienteC.falar('Já comprei com ela muito boa revendedora.');

  pularLinha();

  clienteC.adicionarDineiro(200.33);
  clienteC.adicionarDineiro(150.55);
  clienteC.adicionarDineiro(1000.00);
  pularLinha();

  clienteC.comprarProduto(produtoB, revendedorB);

  pularLinha();

  clienteC.comprarProduto(produtoA, revendedorB);

  pularLinha();
}
