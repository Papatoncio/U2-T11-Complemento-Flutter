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
