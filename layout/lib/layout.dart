import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  @override
  State createState() => LayoutState();
}

class LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // Barra de Título
        appBar: AppBar(
          title: const Text("Layout - Flutter"),
        ),

        // Menu Lateral (hamburger)
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              // Cabeçalho do Menu
              DrawerHeader(
                  child: Text('Itens do Menu'),
                  decoration: BoxDecoration(color: Colors.blueAccent)),

              // Item 1
              ListTile(
                title: const Text("Flutter"),
                subtitle: Text("Tudo São Widgets"),
                trailing: Icon(Icons.keyboard_arrow_right),
                leading: Icon(
                  Icons.flutter_dash,
                  color: Colors.blue,
                  size: 32,
                ),
                // onTap: () {
                // Aqui vai o codigo de um método
                // Navigator.pop(context);
                // }
              ),

              // Item 2
              ListTile(
                title: const Text("Dart"),
                subtitle: Text("Coração Flutter"),
                trailing: Icon(Icons.keyboard_arrow_right),
                leading: Icon(Icons.heart_broken_rounded,
                    color: Colors.red, size: 32),
                // onTap: () {
                // Aqui vai o codigo de um método
                // Navigator.pop(context);
                // }
              ),

              // Item 3
              ListTile(
                title: const Text("Cafessínio"),
                subtitle: Text("Não vivo sem!"),
                trailing: Icon(Icons.keyboard_arrow_right),
                leading: Icon(Icons.coffee, color: Colors.brown, size: 32),

                // onTap: () {
                // Aqui vai o codigo de um método
                // Navigator.pop(context);
                // }
              ),

              // Item 4
              ListTile(
                title: const Text("Ajustes"),
                subtitle: Text("Configurações do Sistema"),
                trailing: Icon(Icons.keyboard_arrow_right),
                leading: Icon(Icons.settings, color: Colors.teal, size: 32),

                // onTap: () {
                // Aqui vai o codigo de um método
                // Navigator.pop(context);
                // }
              )
            ],
          ),
        ),

        // Corpo do App
        body: const Center(child: Text('Layout Básico')),

        // Barra de Ícones (inferior)
        bottomNavigationBar: BottomNavigationBar(
          items: [
            // ícone Home
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),

            // ícone Configurações
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Ajustes'),

            // ícone login
            BottomNavigationBarItem(icon: Icon(Icons.login), label: 'Login')
          ],
        ),
      ),
    );
  }
}
