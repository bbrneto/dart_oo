import 'bolo_caseiro.dart';
import 'bolo_milho.dart';

void main() {
  BoloCaseiro boloCaseiro = BoloCaseiro('Bolo caseiro', 500, 'Marrom');
  boloCaseiro.separarIngredientes();

  BoloMilho boloMilho = BoloMilho('Bolo de milho', 300, 'Amarelo');
  boloMilho.prepararMassa();
  boloMilho.assar();
}