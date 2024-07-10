// * Superclase
class Vehiculo {
  String marca;
  int anio;

  //TODO: Constructor
  Vehiculo(this.marca, this.anio);

  // * Método
  void mostrarDetalles() {
    print("Marca: ${marca}, Año: ${anio}");
  }
}
