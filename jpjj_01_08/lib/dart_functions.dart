// * Crear una función que salude
void saludar() {
  print("Hola");
}

void ejecutarOperacion(int x, int y, int Function(int, int) operacion) {
  var resultado = operacion(x, y);
  print("El resultado es: ${resultado}");
}

int sumar(int x, int y) {
  return x + y;
}

int restar(int x, int y) {
  return x - y;
}

int multiplicar(int x, int y) {
  return x * y;
}

int dividir(int x, int y) {
  return x ~/ y;
}

Function crearMultiplicador(int factor) {
  return (int numero) => numero * factor;
}
