import 'dart:io';

void main(List<String> arguments) {
  // Declarar variables
  int contador;
  String nombre;
  double nota;
  bool esAdulto;

  // Asignamos nombres a unas variables
  contador = 0;
  nombre = "Juan";
  nota = 8.5;
  esAdulto = true;

  // Declarar una condicional if
  if (nota > 8) {
    print("Aprobaste");
  } else {
    print("Reprobaste");
  }

  // Condición Multiple Nota
  switch (nota.ceil()) {
    case 8:
    case 9:
      print("B");
      break;
    case 10:
      print("A");
      break;
    default:
      print("Nota inválida");
      break;
  }

  // Ciclo While
  while (contador < 5) {
    print("El contador tiene el valor de $contador");
    contador++;
  }

  // Otro while
  int numero;

  print("Teclea un número:");
  int i = 1;
  numero = int.parse(stdin.readLineSync()!);
  while (i <= 10) {
    print("$numero X $i = ${numero * i}");
    i++;
  }

  // Ciclo For
  for (var i = 0; i <= 10; i++) {
    print("$numero X $i = ${numero * i}");
  }

  // Break
  for (var i = 0; i <= 10; i++) {
    if (i == 7) {
      break;
    }
    print("$i");
  }

  // Ciclo do - while
  do {
    print(contador);
    contador++;
  } while (contador < 10);
}
