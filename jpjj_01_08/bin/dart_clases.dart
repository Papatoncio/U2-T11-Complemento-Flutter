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
