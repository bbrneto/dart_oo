import 'alimento.dart';

class Legume extends Alimento {
  bool isPrecisaCozinhar;

  // SUPER é usado para os atributos da superclasse
  // THIS é usado para os atributos da subclasse
  Legume(super.nome, super.peso, super.cor, this.isPrecisaCozinhar);

  void cozinhar() {
    if (isPrecisaCozinhar) {
      print('Pronto, o $nome está cozinhando.');
    } else {
      print('Nem precisa cozinhar!');
    }
  }
}
