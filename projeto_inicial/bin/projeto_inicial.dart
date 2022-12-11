void main() {
  int idade = 24;
  int hexadecimal = 0x000018;
  double altura = 1.86;
  double exponencial = 780e6;
  bool geek = true;
  bool comparacao = idade == altura;
  const String nome = 'Leonardo';
  final String apelido;
  apelido = 'Leo';
  // var variavel = 10;
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

  List<dynamic> leo = [idade, altura, geek, nome, apelido];
  String fraselista = 'Eu sou ${leo[4]}, \n'
      'mas meu nome completo é ${leo[3]}, \n'
      'eu me considero geek? ${leo[2]}. \n'
      'Eu tenho ${leo[1]} metros de altura e \n'
      '${leo[0]} anos de idade.';
  print(fraselista);
}
