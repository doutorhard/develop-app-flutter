import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  @override
  State createState() => LayoutState();
}

class LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // Barra de Título
        appBar: AppBar(
          title: const Text("Layout - Flutter"),
        ),
        drawer: const Drawer(
            //
            ),
        // Corpo do App
        body: const Center(child: Text('Layout Básico')),

        // Barra de Ícones (inferior)
        bottomNavigationBar: BottomNavigationBar(
          items: [
            // ícone Home
            const BottomNavigationBarItem(
                icon: Icon(Icons.home), label: 'Home'),

            // ícone Configurações
            const BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Ajustes'),

            // ícone login
            const BottomNavigationBarItem(
                icon: Icon(Icons.login), label: 'Login'),
          ],
        ),
      ),
    );
  }
}
