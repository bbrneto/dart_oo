import 'alimento.dart';
import 'citrica.dart';
import 'fruta.dart';
import 'legume.dart';
import 'noz.dart';

void main() {
  Alimento pao = Alimento('Pão', 5, 'Marrom');
  Legume mandioca = Legume('Mandioca', 1200, 'Marrom', true);
  Fruta banana = Fruta('Banana', 75, 'Amarelo', 'Doce', 12);
  Citrica limao = Citrica('Limão', 100, 'Verde', 'Azedo', 5, 9);
  Noz macadamia = Noz('Macadâmia', 2, 'Branco', 'Doce', 20, 35);

  pao.printAlimento();
  mandioca.printAlimento();
  banana.printAlimento();
  limao.printAlimento();
  macadamia.printAlimento();

  mandioca.cozinhar();

  banana.fazerSuco();
  limao.fazerSuco();
  macadamia.fazerSuco();

  limao.existeRefri(true);
  // macadamia.existeRefri(true);// The method 'existeRefri' isn't defined for the type 'Noz'.
}
