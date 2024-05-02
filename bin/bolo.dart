// Classe abstrata (Interface)
// É um modelo, uma receita, um conceito, um contrato, uma abstração, uma ideia.
// É oposto ao concreto, ou seja, não é manuseável, não é manipulável.
// Usada para definir classes concretas.
abstract class Bolo {
  // Método obrigatório para as subclasses.
  void separarIngredientes();

  // É um comportamento implementado por outra classe.
  void prepararMassa();

  // Como assar o bolo? Cada bolo possui um modo diferente de ser assado.
  void assar();
}
