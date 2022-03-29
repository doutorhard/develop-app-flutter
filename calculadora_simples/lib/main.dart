import 'package:flutter/material.dart';
import 'Calculadora.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculadora Simples",
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const Calculadora(),
      debugShowCheckedModeBanner: false,
    );
  }
}
