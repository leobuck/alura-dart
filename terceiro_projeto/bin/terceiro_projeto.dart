void main() {
  escolherMeioTransporteEnum(Transporte.carro);
}

void escolherMeioTransporteEnum(Transporte locomocao) {
  if (locomocao == Transporte.carro) {
    print("Vou de CARRO para aventura!");
  } else if (locomocao == Transporte.bike) {
    print("Vou de BIKE para aventura!");
  } else {
    print("Vou para aventura!");
  }
}

enum Transporte { carro, bike, andando, skate, aviao, patins, trem }
