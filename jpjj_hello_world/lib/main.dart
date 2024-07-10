import 'package:flutter/material.dart';
import 'package:jpjj_hello_world/presentation/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CounterScreen(),
      debugShowCheckedModeBanner: false, // Quitar el tag debug
    );
  }
}
