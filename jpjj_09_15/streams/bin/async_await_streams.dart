//Archivo azyng_await_streams.dart
void main() async {
  Stream<int> stream =
      Stream.periodic(Duration(seconds: 1), (contador) => contador)
          .take(5); //Stream periodic
  await for (var data in stream) {
    print("Data recibida: $data");
  }
}
