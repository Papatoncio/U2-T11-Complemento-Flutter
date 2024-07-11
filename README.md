# Complemento Flutter
### Ejercicios del 01 al 04:
- 01: Hello World.
  - Código:
```dart
void main() {
  String name = "Juan Pablo";
  print("");
  print("Hola, $name!");
}
```
  - Captura:

![imagen](https://github.com/Papatoncio/U2-T11-Complemento-Flutter/assets/106355475/c87a97c4-5aff-4951-8525-2240e27a2cce)


- 02: Variables.
  - Código:
```dart
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
```

- 03: Maps.
  - Código:
```dart
// Crear un mapa
Map<String, int> verduras = {
  "Cilantro": 1,
  "Zanahoria": 3,
  "Apio": 5,
  "Coliflor": 2
};

verduras.remove("Zanahoria");

verduras["Papas"] = 8;
```

- 04: List, maps and Iterables.
  - Código:
```dart
import 'dart:ffi';

void main() {
  // Declarar lista
  var numeros = [1, 3, 6, 8, 7];
  // Recorrer la lista para imprimir los valores
  for (var i in numeros) {
    print(i);
  }
  // Recorrer la lista para imprimir los valores X2
  print("Recorriendo con ForEach");
  numeros.forEach((i) => print(i));

  // Añadir valores a la lista
  numeros.add(5);
  print(numeros);

  // Remover valore
  numeros.remove(8);
  print(numeros);

  // Crear un mapa
  // var verduras = {"Cilantro": 1, "Zanahoria": 3, "Apio": 5, "Coliflor": 2};
  // print(verduras);

  // Crear un mapa
  Map<String, int> verduras = {
    "Cilantro": 1,
    "Zanahoria": 3,
    "Apio": 5,
    "Coliflor": 2
  };
  print(verduras);

  verduras.remove("Zanahoria");
  print(verduras);

  verduras["Papas"] = 8;
  print(verduras);

  print(verduras.isEmpty);
  print(verduras.length);
  print(verduras.keys);
  print(verduras.values);

  for (var verdura in verduras.entries) {
    print("${verdura.key}:${verdura.value}");
  }
}
```


### Ejercicios del 05 al 08:
- 05: Functions.
  - Código Funciones:
```dart
// Crear una función que salude
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
```

  - Código prueba:
```dart
// Importar desde lib
import 'package:jpjj_01_08/dart_functions.dart';

// Declarar la función principal
void main() {
  for (var i = 0; i <= 10; i++) saludar();

  var funcionSaludo = saludar;
  var i = 0;

  while (i < 10) {
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
```
  - Captura:

![imagen](https://github.com/Papatoncio/U2-T11-Complemento-Flutter/assets/106355475/4ddf6d82-a3d0-4c0e-b33e-dcf453f46162)


- 06: Classes.
  - Código clases:
##### Vehiculo
```dart
//  Superclase
class Vehiculo {
  String marca;
  int anio;

  // Constructor
  Vehiculo(this.marca, this.anio);

  // Método
  void mostrarDetalles() {
    print("Marca: ${marca}, Año: ${anio}");
  }
}
```

##### Coche
```dart
// Declaración de clase
class Coche {
  // Atributo de la clase
  String marca;
  late String modelo;
  late int anio;

  // Constructor
  Coche(this.marca, this.modelo, this.anio);

  // Constructor con nombre
  Coche.soloMarca(this.marca) {
    this.modelo = "Desconocido";
    this.anio = 0;
  }

  // Método
  void mostrarDetalles() {
    print("Marca: ${marca}, Modelo ${modelo}, Año: ${anio}");
  }
}
```

##### Auto
```dart
import 'vehiculo.dart';

class Auto extends Vehiculo {
  // Atributos propios de auto
  String modelo;

  // Constructor
  Auto(String marca, int anio, this.modelo) : super('', 0);
}
```

- Código prueba:
```dart
import 'package:jpjj_01_08/coche.dart';

void main() {
  print("");
  var micoche = Coche("Chevrolet", "Chevy Pickup", 2024);
  micoche.mostrarDetalles();

  var otrocoche = Coche("Ford", "Falcon", 1968);
  otrocoche.mostrarDetalles();

  var cochenuevo = Coche("Toyota", "Corolla", 2020);
  cochenuevo.mostrarDetalles();

  var unCocheMas = Coche.soloMarca("Nissan");
  unCocheMas.mostrarDetalles();
}
```
  - Captura:

![imagen](https://github.com/Papatoncio/U2-T11-Complemento-Flutter/assets/106355475/b17e1c17-8288-4bb2-988a-3a25b23dccb5)


- 07: Constructors and names.
  - Código:
```dart
// Constructor
Coche(this.marca, this.modelo, this.anio);

// Constructor con nombre
Coche.soloMarca(this.marca) {
  this.modelo = "Desconocido";
  this.anio = 0;
}
```


- 08: get and set.
  - Código:
```dart
// Getters
String get nombre => _nombre;
int get edad => _edad;

// Setters
set nombre(String nombre) {
  _nombre = nombre;
}

set edad(int edad) {
  _edad = edad;
}
```


### Ejercicios del 09 al 15:
- 09: Abstract class.
  - Código:
```dart
abstract class Figura {
  double calcularArea();
}

class Circulo extends Figura {
  double radio;

  Circulo(this.radio);

  @override
  double calcularArea() {
    //pi * radio*radio
    return 3.14 * radio * radio;
  }
}

class Rectangulo extends Figura {
  double ancho, alto;

  Rectangulo(this.ancho, this.alto);

  @override
  double calcularArea() {
    //ancho*alto
    return ancho * alto;
  }
}

void main() {
  var c = Circulo(15);
  var r = Rectangulo(3, 5);
  print('Área del círculo: ${c.calcularArea()}');
  print('Área del rectángulo: ${r.calcularArea()}');
}
```
  - Captura:

![imagen](https://github.com/Papatoncio/U2-T11-Complemento-Flutter/assets/106355475/c0d0dca7-32c7-4354-b093-b2e45b332990)


- 10: Mixins.
  - Código:
```dart
//Definir un mixin
mixin Volador {
  void volar() {
    print("Estoy volando");
  }
}

mixin Corredor {
  void correr() {
    print("Estoy corriendo");
  }
}

class Pajaro with Volador, Corredor {}

void main() {
  var pajaro = Pajaro();
  pajaro.volar();
  pajaro.correr();
}
```
  - Captura:

![imagen](https://github.com/Papatoncio/U2-T11-Complemento-Flutter/assets/106355475/70d152b5-0ab0-4145-b34a-0f006acdbbdd)


- 11: Futures.
  - Código:
```dart
void main() {
  print("Inicio del programa");

  Future(() {
    return 'Hola mundo!';
  }).then((resultado) {
    print(resultado);
  });

  print("Fin del programa");
}
```
  - Captura:

![imagen](https://github.com/Papatoncio/U2-T11-Complemento-Flutter/assets/106355475/0560b58c-4a17-49af-bd77-61a04bb9ad4b)


- 12: Async Await.
  - Código:
```dart
//Archivo async_await.dart
void main() async {
  print("Inicio del programa");

  String resultado = await Future(() {
    return "Hola mundo!";
  });

  print(resultado);
  print('Fin del programa');
}
```
  - Captura:

![imagen](https://github.com/Papatoncio/U2-T11-Complemento-Flutter/assets/106355475/28c15be4-8efb-46fe-a201-bdec6cba21f9)


- 13: Try catch finally.
  - Código:
```dart
void main() {
  try {
    //int resultado = 10 ~/ 2; //Resultado
    int resultado = 10 ~/ 0; //Error
    print("El resultado es $resultado");
  } catch (e, s) {
    print("Se produjo una excepción $e");
    print("Su descripción es $s");
  } finally {
    print("Procura no dividir entre cero");
  }
}
```
  - Captura:

![imagen](https://github.com/Papatoncio/U2-T11-Complemento-Flutter/assets/106355475/e9a09ff3-0ca5-4657-acc8-b629c2b3606e)


- 14: Streams.
  - Código:
```dart
void main() {
  Stream<int> stream =
      Stream<int>.periodic(Duration(seconds: 1), (count) => count)
          .take(5); //Stream.periodic
  stream.listen((data) => print('Data recibida: $data'));

  Stream<int> otroStream = Stream.fromIterable([6, 7, 8, 9, 10]);
  otroStream.listen((data) {
    print("Data recibida: $data");
  });
}
```
  - Captura:

![imagen](https://github.com/Papatoncio/U2-T11-Complemento-Flutter/assets/106355475/8340b266-4772-42d7-a670-6d45fe33b311)


- 15: Stream await.
  - Código:
```dart
//Archivo azyng_await_streams.dart
void main() async {
  Stream<int> stream =
      Stream.periodic(Duration(seconds: 1), (contador) => contador)
          .take(5); //Stream periodic
  await for (var data in stream) {
    print("Data recibida: $data");
  }
}
```
  - Captura:

![imagen](https://github.com/Papatoncio/U2-T11-Complemento-Flutter/assets/106355475/a50fe235-eac4-4517-ba19-ce09ddbc46fd)


### Aplicaciones Flutter
- Aplicación HelloWorld.
  - Código: [HelloWorld](https://github.com/Papatoncio/U2-T11-Complemento-Flutter/tree/main/jpjj_hello_world)
  - Captura:

![imagen](https://github.com/Papatoncio/U2-T11-Complemento-Flutter/assets/106355475/4e618a6b-48b0-4c72-970c-db028d364b8f)

 
- Aplicación YesOrNo.
  - Código: [YesNoApp](https://github.com/Papatoncio/U2-T11-Complemento-Flutter/tree/main/jpjj-yes-no-app-main)
  - Captura:

![imagen](https://github.com/Papatoncio/U2-T11-Complemento-Flutter/assets/106355475/87a4fb3e-0554-4730-a31a-c17b451dc9f8)


- Proyecto con arquitectura.
  - Código: [jpjj_ddi_phone](https://github.com/Papatoncio/U2-T11-Complemento-Flutter/tree/main/jpjj_ddi_phone)
  - Captura:

![imagen](https://github.com/Papatoncio/U2-T11-Complemento-Flutter/assets/106355475/1de861c7-73f1-43a7-b1a7-4ce6472fd66f)
