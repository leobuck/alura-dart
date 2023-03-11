void main() {
  escolherMeioTransporteEnum(Transporte.skate);
}

void escolherMeioTransporteEnum(Transporte locomocao) {
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
