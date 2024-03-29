import 'Transporte.dart';

class Viagem {
  static String codigoTrabalho = "ABCD1234";
  double dinheiro = 0;
  Transporte locomocao;
  Set<String> registrosVisitados = <String>{};
  Map<String, dynamic> registrarPrecos = {};
  int _totalLocaisVisitados = 0;

  Viagem({required this.locomocao});

  printCodigo() {
    print(codigoTrabalho);
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

  void visitar(String localVisita) {
    registrosVisitados.add(localVisita);
    _totalLocaisVisitados += 1;
  }

  void registrarPrecoVisita(String local, dynamic preco) {
    registrarPrecos[local] = preco;
  }

  int get consultarTotalLocaisVisitados {
    return _totalLocaisVisitados;
  }

  void set alterarLocaisVisitados(int novaQtd) {
    if (novaQtd < 10) {
      _totalLocaisVisitados = novaQtd;
    } else {
      print("Não é possível");
    }
  }
}
