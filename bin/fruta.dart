class Fruta {
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(this.nome, this.peso, this.cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura});

  Fruta.nomeados({
    required this.nome,
    required this.peso,
    required this.cor,
    required this.sabor,
    required this.diasDesdeColheita,
    this.isMadura,
  });

  Fruta.maiusculas(
      this.nome, this.peso, this.cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura}) {
    nome = nome.toUpperCase();
    cor = cor.toUpperCase();
    sabor = sabor.toUpperCase();
  }

  estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;

    print('A sua $nome foi colhida a $diasDesdeColheita dias e precisa de $diasParaMadura para amadurecer.');
    print('Está madura? $isMadura');
  }
}
