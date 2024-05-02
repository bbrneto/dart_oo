import 'alimento.dart';
import 'bolo.dart';

class BoloCaseiro extends Alimento implements Bolo {
  BoloCaseiro(super.nome, super.peso, super.cor);

  @override
  void separarIngredientes() {
    print('Escolher farinha');
  }

  @override
  void prepararMassa() {
    print('Misturar com ovos e leite');
  }

  @override
  void assar() {
    print('Colocar no forno por 30 minutos');
  }
}
