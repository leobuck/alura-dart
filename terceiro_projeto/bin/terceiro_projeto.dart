void main() {
  escolherMeioTransporte(Transporte.skate);

  Set<String> registrosVisitados = <String>{};
  registrosVisitados = registrarDestinos("São Paulo", registrosVisitados);
  registrosVisitados = registrarDestinos("Recife", registrosVisitados);
  registrosVisitados = registrarDestinos("Rio de Janeiro", registrosVisitados);
  registrosVisitados = registrarDestinos("São Paulo", registrosVisitados);
  print(registrosVisitados);

  Map<String, dynamic> registrarPrecos = {};
  registrarPrecos["São Paulo"] = 1200;
  registrarPrecos["Rio de Janeiro"] = 1500;
  registrarPrecos["Nova York"] = "Muito Caro";

  print(registrarPrecos);

  Viagem viagemHoje = Viagem();
}

class Viagem {
  static String codigoTrabalho = "ABCD1234";
  double dinheiro = 0;

  printCodigo() {
    print(codigoTrabalho);
  }
}

Set<String> registrarDestinos(String destino, Set<String> banco) {
  banco.add(destino);
  return banco;
}

void escolherMeioTransporte(Transporte locomocao) {
  switch (locomocao) {
    case Transporte.carro:
      print("Vou de CARRO para aventura!");
      break;
    case Transporte.bike:
      print("Vou de BIKE para aventura!");
      break;
    case Transporte.onibus:
      print("Vou de BUSÃO para aventura!");
      break;
    default:
      print("Estou indo para aventura, isso é o que importa!");
  }
}

enum Transporte { carro, bike, andando, skate, aviao, patins, trem, onibus }
