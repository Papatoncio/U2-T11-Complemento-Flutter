// Importar desde lib
import 'package:jpjj_01_08/dart_functions.dart';

// Declarar la función principal
void main() {
  for (var i = 0; i <= 1; i++) saludar();

  var funcionSaludo = saludar;
  var i = 0;

  while (i < 1) {
    funcionSaludo();
    i++;
  }

  ejecutarOperacion(10, 20, sumar);
  ejecutarOperacion(20, 10, restar);
  ejecutarOperacion(10, 20, multiplicar);
  ejecutarOperacion(20, 10, dividir);

  var duplicar = crearMultiplicador(2);
  var triplicar = crearMultiplicador(3);

  print(duplicar(5));
  print(triplicar(20));

  var suma = (int a, int b) {
    return a + b;
  };

  print("La suma es ${suma(5, 4)}");

  var notas = [10, 8, 9, 5];
  notas.forEach((n) {
    print(n);
  });
  print("Fecha");
  notas.forEach((n) => print(n));

  var sumaNotas = 0;
  notas.forEach((n) => sumaNotas += n);
  var promedio = sumaNotas / notas.length;
  print("El promedio es: $promedio");
}
