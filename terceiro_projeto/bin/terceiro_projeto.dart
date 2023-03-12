import 'Transporte.dart';
import 'viagem.dart';

void main() {
  Viagem viagem = Viagem(locomocao: Transporte.onibus);
  print(viagem.consultarTotalLocaisVisitados);
  viagem.visitar("Museu");
  print(viagem.consultarTotalLocaisVisitados);
  viagem.alterarLocaisVisitados = 10;
  print(viagem.consultarTotalLocaisVisitados);
}
