// Importações dos arquivos que serão utilizados
import 'classes/brinde.dart';
import 'classes/cliente.dart';
import 'classes/enums.dart';
import 'classes/pessoa.dart';
import 'classes/produto.dart';
import 'classes/revendedor.dart';
import 'utils.dart';

main() {
  /* Declaração de objetos Produto */

  // Declare aqui alguns objetos do tipo Produto...
  // Exemplo: Produto produtoA = Produto("Colônia Floratta Flores Secretas 75ml", 104.90, 3);

  Produto produtoA = Produto(nome: 'Malbec', valor: 179.90, qtdEmEstoque: 5);
  Produto produtoB = Produto(nome: 'Zaad', valor: 269.90, qtdEmEstoque: 40);
  Produto produtoC = Produto(nome: 'Portinari', valor: 169.9, qtdEmEstoque: 0);
  Produto produtoD = Produto(
      nome: 'Cuide-se Bem Biscoito ou Bolacha', valor: 96.90, qtdEmEstoque: 2);
  print("Testes da classe Produto");
  print("Produto A: $produtoA");
  print("Produto B: $produtoB");
  print("Produto C: $produtoC");
  print("Produto D: $produtoD");
  divisoriaSimples();
  pularLinha();

  // print("Testes realizarVenda");
  // divisoriaSimples();
  // produtoA.realizarVenda();
  // produtoA.realizarVenda();
  // produtoA.realizarVenda();
  // produtoB.realizarVenda();
  // produtoC.realizarVenda();
  // produtoD.realizarVenda();
  // produtoD.realizarVenda();
  // produtoD.realizarVenda();
  // divisoriaSimples();
  // pularLinha();
  // Saída esperada 1: Compra de um produto Colônia Floratta Flores Secretas 75ml realizada com sucesso!
  // Saída esperada 2: No momento não possuímos o produto Colônia Floratta Flores Secretas 75ml em estoque.

  // Teste o método verReceitaGerada algumas vezes...
  // Exemplo: print(produtoA.verReceitaGerada());
  // print("Testes verReceitaGerada");
  // divisoriaSimples();
  // print(produtoA.verReceitaGerada());
  // print(produtoB.verReceitaGerada());
  // print(produtoC.verReceitaGerada());
  // print(produtoD.verReceitaGerada());
  // divisoriaSimples();
  // pularLinha();
  // print("Testes verReceitaGeradaFormatada");
  // divisoriaSimples();
  // produtoA.verReceitaGeradaFormatada();
  // produtoB.verReceitaGeradaFormatada();
  // produtoC.verReceitaGeradaFormatada();
  // produtoD.verReceitaGeradaFormatada();
  // divisoriaDupla();
  // pularLinha();
  // print("Produto A: $produtoA");
  // print("Produto B: $produtoB");
  // print("Produto C: $produtoC");
  // print("Produto D: $produtoD");
  // pularLinha();
  /* ------------------------------------------ */

  /* Declaração de objetos Pessoa */

  // Declare aqui alguns objetos do tipo Pessoa...
  // Exemplo: Pessoa pessoaA = Pessoa('Maria', '12345678900', 1994);

  Pessoa pessoaA = Pessoa(
    nome: 'Matheus',
    dataDeNascimento: DateTime(2000, 12, 01),
    cpf: '79464385081',
    genero: Genero.masculino,
  );
  Pessoa pessoaB = Pessoa(
    nome: 'Maria',
    dataDeNascimento: DateTime(1999, 11, 08),
    cpf: '69316321085',
    genero: Genero.feminino,
  );

  Pessoa pessoaC = Pessoa(
    nome: 'Jose',
    dataDeNascimento: DateTime(1980, 01, 15),
    cpf: '25726479076',
    genero: Genero.outro,
  );

  Pessoa pessoaD = Pessoa(
    nome: 'Marcos',
    dataDeNascimento: DateTime(2010, 10, 25),
    cpf: '05438088071',
    genero: Genero.masculino,
  );

  /* Testes da classe Pessoa */
  print("Testes da classe Pessoa");
  print("pessoaA: $pessoaA");
  print("Pessoa B: $pessoaB");
  print("Pessoa C: $pessoaC");
  print("Pessoa D: $pessoaD");
  divisoriaSimples();
  pularLinha();
  print("Testes falar");
  divisoriaSimples();
  pessoaA.falar('Oi, tudo bem?');
  pessoaB.falar('Estou bem e você?');
  pessoaC.falar('Qual o melhor grupo do desenvolve?');
  pessoaA.falar('É o grupo Dartmode, eles são dedicados.');
  pessoaA.falar('Sim, estão de parabéns.');
  pessoaD.falar('Oi pessoal sobre o que estão falando?');
  divisoriaSimples();
  pularLinha();
  print("Testes maiorIdade");
  divisoriaSimples();
  pessoaA.maiorIdade();
  pessoaB.maiorIdade();
  pessoaC.maiorIdade();
  pessoaD.maiorIdade();
  divisoriaSimples();
  pularLinha();
  print("Testes termometroDoHumor");
  divisoriaSimples();
  pessoaA.termometroDoHumor(
      Humor.feliz); // "Que bom que você está feliz hoje, Matheus!"
  pessoaB.termometroDoHumor(Humor
      .triste); // "Sinto muito que você esteja triste, Maria. Posso te ajudar em algo?"
  pessoaC.termometroDoHumor(
      Humor.ansiosa); // "Calma, Jose. Respire fundo e tudo vai dar certo."
  pessoaD.termometroDoHumor(
      Humor.confusa); // "Não entendi o seu humor Marcos. Tente novamente."
  divisoriaDupla();
  pularLinha();
  /* ------------------------------------------ */

  print("Testes da classe Revendedor");
  divisoriaSimples();
  Revendedor revendedorA = Revendedor(
      nome: 'Matheus Queiroz',
      dataDeNascimento: DateTime(2000, 12, 01),
      cpf: '38569437064',
      matricula: '1234',
      genero: Genero.masculino);

  Revendedor revendedorB = Revendedor(
      nome: 'Thais',
      dataDeNascimento: DateTime(1990, 05, 01),
      cpf: '97063889079',
      matricula: '1223',
      genero: Genero.feminino);

  Revendedor revendedorC = Revendedor(
      nome: 'Tereza',
      dataDeNascimento: DateTime(1960, 01, 01),
      cpf: '35403986006',
      matricula: '4343',
      genero: Genero.outro);

  Revendedor revendedorD = Revendedor(
      nome: 'André',
      dataDeNascimento: DateTime(1976, 06, 23),
      cpf: '97063889079',
      matricula: '6897',
      genero: Genero.masculino);
  print("Revendedor A: $revendedorA");
  print("Revendedor B: $revendedorB");
  print("Revendedor C: $revendedorC");
  print("Revendedor D: $revendedorD");
  divisoriaSimples();
  pularLinha();
  print("Testes falar");
  divisoriaSimples();
  revendedorA.falar('Olá pessoal estão vendendo bem?');
  revendedorB.falar('Estou vendendo muito bem e você Tereza?');
  revendedorC.falar('Também estou vendendo bem.');
  revendedorD.falar('Opa!');
  pularLinha();
  // print("Testes venderProduto");
  // divisoriaSimples();
  // print("Produto A: $produtoA");
  // print("Produto B: $produtoB");
  // print("Produto C: $produtoC");
  // print("Produto D: $produtoD");
  // divisoriaSimples();
  // revendedorA.venderProduto(produtoA);
  // revendedorA.venderProduto(produtoB);
  // revendedorA.venderProduto(produtoC);
  // revendedorA.venderProduto(produtoD);
  // divisoriaSimples();
  // revendedorB.venderProduto(produtoD);
  // divisoriaSimples();
  // revendedorC.venderProduto(produtoB);
  // revendedorC.venderProduto(produtoB);
  // revendedorC.venderProduto(produtoB);
  // revendedorC.venderProduto(produtoB);
  // revendedorC.venderProduto(produtoB);
  // revendedorC.venderProduto(produtoB);
  // revendedorC.venderProduto(produtoB);
  // revendedorC.venderProduto(produtoB);
  // divisoriaSimples();
  // revendedorD.venderProduto(produtoC);
  // divisoriaSimples();
  // pularLinha();

  divisoriaDupla();
  pularLinha();

  print("Testes da classe Cliente");
  divisoriaSimples();
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

  Cliente clienteD = Cliente(
    nome: 'Julio',
    dataDeNascimento: DateTime(2011, 11, 06),
    cpf: '64565456456465',
    genero: Genero.masculino,
  );

  print("Cliente A: $clienteA");
  print("Cliente B: $clienteB");
  print("Cliente C: $clienteC");
  print("Cliente D: $clienteD");
  divisoriaSimples();
  pularLinha();
  print("Testes falar");
  divisoriaSimples();
  clienteA.falar('Quero comprar um perfume');
  revendedorA.falar('Fale com meu minha amiga Thais');
  revendedorB.falar('Estou aqui para te atender');
  clienteA.falar('Oi, como posso ajudar?');
  clienteB.falar('Também quero comprar.');
  clienteC.falar('Já comprei com ela muito boa revendedora.');
  divisoriaSimples();
  pularLinha();

  print("Testes adicionarDineiro");
  divisoriaSimples();
  clienteA.adicionarDineiro(1000.00);
  clienteB.adicionarDineiro(50.00);
  clienteC.adicionarDineiro(100.00);
  clienteC.adicionarDineiro(150.55);
  clienteC.adicionarDineiro(10000.00);
  clienteD.adicionarDineiro(50000.01);
  divisoriaSimples();
  print("Testes comprarProduto");
  clienteA.comprarProduto(produtoA, revendedorD);
  clienteA.comprarProduto(produtoA, revendedorD);
  clienteA.comprarProduto(produtoA, revendedorD);
  divisoriaSimples();
  clienteC.comprarProduto(produtoB, revendedorB);
  divisoriaSimples();
  clienteC.comprarProduto(produtoA, revendedorA);
  clienteC.comprarProduto(produtoB, revendedorB);
  clienteC.comprarProduto(produtoC, revendedorC);
  clienteC.comprarProduto(produtoD, revendedorD);
  divisoriaSimples();
  clienteD.comprarProduto(produtoB, revendedorB);
  clienteD.comprarProduto(produtoB, revendedorA);
  clienteD.comprarProduto(produtoB, revendedorB);
  divisoriaSimples();

  print("Testes calcularLucro");
  divisoriaSimples();
  print(
      "Lucro do revendedor ${revendedorA.nome} R\$:${revendedorA.calcularLucro().toStringAsFixed(2).replaceAll('.', ',')}");
  print(
      "Lucro do revendedor ${revendedorB.nome} R\$:${revendedorB.calcularLucro().toStringAsFixed(2).replaceAll('.', ',')}");
  print(
      "Lucro do revendedor ${revendedorC.nome} R\$:${revendedorC.calcularLucro().toStringAsFixed(2).replaceAll('.', ',')}");
  print(
      "Lucro do revendedor ${revendedorD.nome} R\$:${revendedorD.calcularLucro().toStringAsFixed(2).replaceAll('.', ',')}");
  divisoriaSimples();
  print("Testes verResumo");
  revendedorA.verResumo();
  revendedorB.verResumo();
  revendedorC.verResumo();
  revendedorD.verResumo();
  divisoriaSimples();
  print("Testes verProdutosComprados");
  clienteA.verProdutosComprados();
  clienteB.verProdutosComprados();
  clienteC.verProdutosComprados();
  clienteD.verProdutosComprados();
  divisoriaSimples();
  pularLinha();

  print("Testes verReceitaGerada");
  divisoriaSimples();
  print(produtoA.verReceitaGerada());
  print(produtoB.verReceitaGerada());
  print(produtoC.verReceitaGerada());
  print(produtoD.verReceitaGerada());
  divisoriaSimples();
  pularLinha();
  print("Testes verReceitaGeradaFormatada");
  divisoriaSimples();
  produtoA.verReceitaGeradaFormatada();
  produtoB.verReceitaGeradaFormatada();
  produtoC.verReceitaGeradaFormatada();
  produtoD.verReceitaGeradaFormatada();
  divisoriaDupla();
  pularLinha();

  print("Testes da classe Brinde");
  divisoriaSimples();

  Brinde brindeA =
      Brinde(nome: 'Colônia Egeo 10ml', pontosNecessarios: 1, qtdEmEstoque: 5);
  Brinde brindeB = Brinde(
      nome: 'Sabonete Cuide-Se Bem Beijinho',
      pontosNecessarios: 1,
      qtdEmEstoque: 5);
  Brinde brindeC = Brinde(
      nome: 'Colônia Floratta Flores Secretas 75m',
      pontosNecessarios: 1,
      qtdEmEstoque: 10);
  Brinde brindeD = Brinde(
      nome: 'Hidratante corporal Glamour',
      pontosNecessarios: 2,
      qtdEmEstoque: 3);
  print("Brinde A: $brindeA");
  print("Brinde B: $brindeB");
  print("Brinde C: $brindeC");
  print("Brinde D: $brindeD");
  divisoriaSimples();
  clienteA.consultarTotalPontos();
  clienteB.consultarTotalPontos();
  clienteC.consultarTotalPontos();
  clienteD.consultarTotalPontos();
  divisoriaSimples();
  pularLinha();

  print("Testes consultarPontosNecessarios");
  divisoriaSimples();
  brindeA.consultarPontosNecessarios();
  brindeB.consultarPontosNecessarios();
  brindeC.consultarPontosNecessarios();
  brindeD.consultarPontosNecessarios();
  divisoriaSimples();
  pularLinha();

  print("Testes trocarPontosPorBrinde");
  divisoriaSimples();
  print("Cliente A:");
  clienteA.trocarPontosPorBrinde(brindeD);
  divisoriaSimples();
  print("Cliente B:");
  clienteB.trocarPontosPorBrinde(brindeB);
  divisoriaSimples();
  print("Cliente C:");
  clienteC.trocarPontosPorBrinde(brindeA);
  clienteC.trocarPontosPorBrinde(brindeB);
  clienteC.trocarPontosPorBrinde(brindeC);
  clienteC.trocarPontosPorBrinde(brindeD);
  clienteC.trocarPontosPorBrinde(brindeA);
  divisoriaSimples();
  print("Cliente D:");
  clienteD.trocarPontosPorBrinde(brindeD);
  clienteD.trocarPontosPorBrinde(brindeD);
  divisoriaSimples();
  pularLinha();
  print("Testes verBrindes");
  divisoriaSimples();
  clienteA.verBrindes();
  clienteB.verBrindes();
  clienteC.verBrindes();
  clienteD.verBrindes();
  divisoriaDupla();
}
