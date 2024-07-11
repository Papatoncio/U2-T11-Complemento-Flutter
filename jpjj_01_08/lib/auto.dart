import 'vehiculo.dart';

class Auto extends Vehiculo {
  // Atributos propios de auto
  String modelo;

  // Constructor
  Auto(String marca, int anio, this.modelo) : super('', 0);
}
