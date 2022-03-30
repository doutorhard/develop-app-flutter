import 'package:layout/layout.dart';
import 'package:flutter/material.dart';

void main() => runApp(LayoutApp());

class LayoutApp extends StatefulWidget {
  @override
  State<LayoutApp> createState() => _LayoutAppState();
}

class _LayoutAppState extends State<LayoutApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Layout Básico",
      home: Scaffold(
        body: Layout(),
      ),
    );
  }
}
