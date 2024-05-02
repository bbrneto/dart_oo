import 'bolo_caseiro.dart';

class BoloMilho extends BoloCaseiro {
  BoloMilho(super.nome, super.peso, super.cor);

  @override // Usado para sobrescrever métodos da superclasse
  void assar() {
    print('Colocar na geladeira por 15 minutos');

    super.assar();
  }
}
