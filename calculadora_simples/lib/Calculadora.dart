import 'dart:html';

import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({Key? key}) : super(key: key);

  @override
  State createState() => CalculadoraState();
}

class CalculadoraState extends State<Calculadora> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Calculadora - Simples",
          style: TextStyle(fontSize: 20, color: Colors.yellowAccent),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Texto que mostra o resultado do cálculo
            Text(
              "Resultado: $resultado",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),

            // Campo de Texto (input do valor 1)
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: "Primeiro Número"),
              controller: t1,
            ),

            // Campo de Texto (input do valor 2)
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: "Segundo Número"),
              controller: t2,
            ),
            // Espaçamento depois dos inputs
            const Padding(
              padding: EdgeInsets.only(top: 20),
            ),

            // Nova linha
            // Botão de somar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: const Text(
                    "+",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  color: Colors.blueAccent,
                  onPressed: somar,
                ),
                // Botão Subtrair
                MaterialButton(
                  child: const Text(
                    "-",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  color: Colors.redAccent,
                  onPressed: subtrair,
                ),
                // Botão Subtrair
                MaterialButton(
                  child: const Text(
                    "/",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  color: Colors.pinkAccent,
                  onPressed: dividir,
                ),
                // Botão Subtrair
                MaterialButton(
                  child: const Text(
                    "*",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  color: Colors.greenAccent,
                  onPressed: multiplicar,
                ),
              ],
            ),

            // Espaçamento depois dos inputs
            const Padding(
              padding: EdgeInsets.only(top: 10),
            ),

            // Botão Limpar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: const Text(
                    "Limpar",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  color: Colors.grey.shade600,
                  onPressed: limpar,
                ),
              ],
            ),

            // Espaçamento depois dos inputs
            const Padding(
              padding: EdgeInsets.only(top: 10),
            ),

            // Botão de subtrair
          ],
        ),
      ),
    );
  }

  // Atributos
  var num1;
  var num2;
  var resultado = 0.0; // = 0

  TextEditingController t1 = TextEditingController(text: "");
  TextEditingController t2 = TextEditingController(text: "");

  // Métodos
  void somar() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      resultado = num1 + num2;
    });
  }

  void subtrair() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      resultado = num1 - num2;
    });
  }

  void dividir() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      resultado = num1 / num2;
    });
  }

  void multiplicar() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      resultado = num1 * num2;
    });
  }

  void limpar() {
    setState(() {
      t1.text = "";
      t2.text = "";
      resultado = 0;
    });
  }
}
// NADA deve ser adicionado depois do RETURN, porque não será lido.
