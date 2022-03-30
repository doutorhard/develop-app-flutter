import 'package:layout/layout.dart';
import 'package:flutter/material.dart';

void main() => runApp(LayoutApp());

class LayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Layout Básico",
      home: Scaffold(
        body: Layout(),
      ),
    );
  }
}
