import 'fruta.dart';

class Noz extends Fruta {
  double porcentagemOleoNatural;

  Noz(String nome, double peso, String cor, String sabor, int diasDesdeColheita, this.porcentagemOleoNatural)
      : super(nome, peso, cor, sabor, diasDesdeColheita);
}
