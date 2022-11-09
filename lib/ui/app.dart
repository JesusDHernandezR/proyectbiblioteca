import 'package:flutter/material.dart';
import 'package:proyectbiblioteca/ui/contenido/inicio.dart';
import 'package:proyectbiblioteca/ui/contenido/login.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(),
      home: const Inicio(),
    );
  }
}
