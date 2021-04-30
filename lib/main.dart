import 'package:flutter/material.dart';
import 'package:imc/paginas/inicio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora IMC',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        accentColor: Colors.white24,
        canvasColor: Color.fromARGB(17, 19, 40, 255),
      ),
      home: MyHomePage(title: 'Calculadora IMC'),
    );
  }
}
