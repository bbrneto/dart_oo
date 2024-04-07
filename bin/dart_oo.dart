// Não é permitido criar uma função dentro de outra função.
import 'fruta.dart';

void main() {
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde e amarela";
  String sabor = "Doce e cítrica";
  int diasDesdeColheita = 40;
  bool isMadura = funcEstaMadura(diasDesdeColheita);

  print(isMadura);

  // Argumento é o que se passa para a função -> (50).
  print(funcEstaMadura(50));

  mostrarMadura01('Uva', 40);
  mostrarMadura02('Uva', 40, cor: 'Roxa');
  mostrarMadura03('Uva', 40);
  mostrarMadura04('Uva', 40, cor: 'Roxa');

  print(funcQuantosDiasMadura(diasDesdeColheita));

  funcRecursiva(0, 10);

  Fruta manga = Fruta('Manga', 120, 'Verde', 'Docinha', 20);
  print(manga.nome);
  print(manga);
  print(manga.isMadura);
  manga.estaMadura(20);

  // Fruta tangerina = Fruta.nomeados(
  //   nome: 'Tangerina',
  //   peso: 80,
  //   cor: 'Laranja',
  //   sabor: 'Adocicado',
  //   diasDesdeColheita: 15,
  // );
  // print(tangerina.nome);
  // print(tangerina);
  // print(tangerina.isMadura);
  // tangerina.estaMadura(20);

  // Fruta pitomba = Fruta.maiusculas('Pitomba', 25, 'Marrom', 'Azedinha', 60);
  // print(pitomba.nome);
  // print(pitomba);
  // print(pitomba.isMadura);
  // pitomba.estaMadura(20);
}

// Parâmetro pertence à função -> (int dias).
bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}
// Declarar void é opcional e significa que o retorno é vazio.

// Tipos de parâmetros:

// - Posicionais obrigatórios
void mostrarMadura01(String nome, int dias) {
  if (dias >= 30) {
    print("A $nome está madura");
  } else {
    print("A $nome não está madura");
  }
}

// - Nomeados opcionais
void mostrarMadura02(String nome, int dias, {String? cor}) {
  if (dias >= 30) {
    print("A $nome está madura");
  } else {
    print("A $nome não está madura");
  }

  if (cor != null) {
    print("A $nome é $cor");
  }
}

// - Parâmetros com valor "Padrão"
void mostrarMadura03(String nome, int dias, {String cor = 'sem cor'}) {
  if (dias >= 30) {
    print("A $nome está madura");
  } else {
    print("A $nome não está madura");
  }

  print("A $nome é $cor");
}

// - Modificador "required" (parâmetro exigido)
void mostrarMadura04(String nome, int dias, {required String cor}) {
  if (dias >= 30) {
    print("A $nome está madura");
  } else {
    print("A $nome não está madura");
  }

  print("A $nome é $cor");
}

// Template de função:
funcFrutifera(
    {required String nome,
    required int dias,
    String? cor,
    String sabor = "doce"}) {}

// O escopo de uma função é definido pelo conteúdo entre chaves
// "return" é a forma de ter acesso ao que é processado no escopo da função
int funcQuantosDiasMadura(int dias) {
  int diasParaMadura = 30;

  int quantosDiasFaltam = diasParaMadura - dias;

  return quantosDiasFaltam;
}

// Função Recursiva:
// - função que chama a si mesma;
// - possui uma condição de parada;
// - bastante útil para resolver problemas que envolvem algum tipo de repetição.
funcRecursiva(int contador, int condicaoParada) {
  print("Estamos há $contador iterações sem StackOverflow.");

  if (contador >= condicaoParada) {
    return;
  }

  funcRecursiva(contador + 1, condicaoParada);
}
// "return;" interrompe a execução de uma função

// ********** StackOverflowException **********
// Indica que o programa excedeu a quantidade máxima de chamadas recursivas definida pelo Sistema Operacional.
