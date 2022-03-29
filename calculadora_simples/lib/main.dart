import 'package:calculadora_simples/Calculadora.dart';
import 'package:flutter/material.dart';

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
