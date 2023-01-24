void main() {
  String nome = "Laranja";
  double peso = 100.2;
  String corFruta = "Verde e Amarela";
  String sabor = "Doce e cítrica";
  int diasDesdeColheita = 20;
  bool isMadura = funcEstaMadura(diasDesdeColheita);

  // mostrarMadura("Uva", 40, cor: "Roxa");
  // int quantosDias = funcQuantosDiasMadura(diasDesdeColheita);
  // print(quantosDias);

  Fruta fruta01 = Fruta(nome, peso, corFruta, sabor, diasDesdeColheita);
  Fruta fruta02 = Fruta("Uva", 40, "Roxa", "Doce", 20);

  print(fruta01.nome);
  print(fruta01);

  print(fruta02.nome);
  print(fruta02);

  fruta01.estaMadura(15);
  fruta02.estaMadura(60);

  print(fruta02.estaMadura(40));
}

class Fruta {
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(this.nome, this.peso, this.cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura});

  estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print(
        "A sua $nome foi colhida a $diasDesdeColheita dias, e precisa de $diasParaMadura para poder comer. Ela está madura? $isMadura.");
  }
}

class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);
}

class Legumes {
  String nome;
  double peso;
  String cor;
  bool isPrecisaCozinhar;

  Legumes(this.nome, this.peso, this.cor, this.isPrecisaCozinhar);
}

class Citricas {
  String nome;
  double peso;
  String cor;
  int diaDesdeColheita;
  bool? isMadura;
  double nivelAzedo;

  Citricas(
      this.nome, this.peso, this.cor, this.diaDesdeColheita, this.nivelAzedo);
}

class Nozes {
  String nome;
  double peso;
  String cor;
  int diaDesdeColheita;
  bool? isMadura;
  double porcentagemOleoNatural;

  Nozes(this.nome, this.peso, this.cor, this.diaDesdeColheita,
      this.porcentagemOleoNatural);
}

// Função void
// void estaMadura() {}

// 1 - Posicionais Obrigatórios
// 2 - Nomeados Opcionais
// {String? cor}
// 3 - Parâmetros "Padrão"
// {String cor = "Sem cor"}
// 4 - Modificador "required"
mostrarMadura(String nome, int dias, {required String cor}) {
  if (dias >= 30) {
    print("A $nome está madura.");
  } else {
    print("A $nome não está madura.");
  }

  if (cor != null) {
    print("A $nome é $cor.");
  }
}

bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}

funcQuantosDiasMadura(int dias) {
  int diasParaMadura = 30;
  int quantosDiasFaltam = diasParaMadura - dias;
  return quantosDiasFaltam;
}
