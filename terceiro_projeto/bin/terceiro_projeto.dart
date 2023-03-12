import 'Transporte.dart';
import 'viagem.dart';

void main() {
  Viagem viagem = Viagem(locomocao: Transporte.onibus);
  print(viagem.consultarTotalLocaisVisitados);
}
