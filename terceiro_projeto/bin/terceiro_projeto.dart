void main() {
  escolherMeioTransporte(Transporte.skate);

  Set<String> registrosVisitados = <String>{};
  registrosVisitados = registrarDestinos("São Paulo", registrosVisitados);
  registrosVisitados = registrarDestinos("Recife", registrosVisitados);
  registrosVisitados = registrarDestinos("Rio de Janeiro", registrosVisitados);
  registrosVisitados = registrarDestinos("São Paulo", registrosVisitados);
  print(registrosVisitados);

  print(registrosVisitados.first);
  print(registrosVisitados.last);
  print(registrosVisitados.isEmpty);
  print(registrosVisitados.contains("São Paulo"));
  print(registrosVisitados.contains("Natal"));
  
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
