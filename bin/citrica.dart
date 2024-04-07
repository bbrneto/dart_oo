import 'fruta.dart';

class Citrica extends Fruta {
  double nivelAzedo;

  Citrica(super.nome, super.peso, super.cor, super.sabor, super.diasDesdeColheita, this.nivelAzedo);

  void existeRefri(bool existe) {
    if (existe) {
      print('Existe refrigerante de $nome');
    } else {
      print('Não existe refrigerante de $nome');
    }
  }
}
