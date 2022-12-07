void main() {
  int idade = 24;
  int hexadecimal = 0x000018;
  double altura = 1.86;
  double exponencial = 780e6;
  bool geek = true;
  bool comparacao = idade == altura;
  String nome = 'Leonardo';
  String apelido = 'Leo';
  String frase = 'Eu sou $apelido, \n'
      'mas meu nome completo é $nome, \n'
      'eu me considero geek? $geek. \n'
      'Eu tenho $altura metros de altura e \n'
      '$idade anos de idade.';
  print(idade);
  print(hexadecimal);
  print(altura);
  print(exponencial);
  print(geek);
  print(comparacao);
  print(nome + apelido);
  print(frase);

  List<String> listanomes = ['Ricarth', 'Natália', 'Alex', 'Ândriu', 'André'];
  print(listanomes);
  print(listanomes[0]);
  print(listanomes.length);
}
