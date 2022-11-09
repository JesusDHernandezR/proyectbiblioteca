import 'package:flutter/material.dart';
import 'package:proyectbiblioteca/ui/contenido/panelinicioestudiante.dart';
import 'package:proyectbiblioteca/ui/contenido/registroestudiante.dart';
import 'package:proyectbiblioteca/ui/contenido/widget.dart';

class LoginEstudiante extends StatefulWidget {
  const LoginEstudiante({super.key});

  @override
  State<LoginEstudiante> createState() => _LoginEstudianteState();
}

class _LoginEstudianteState extends State<LoginEstudiante> {
  TextEditingController controlCorreo = TextEditingController();
  TextEditingController controlContrasena = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio de sesión'),
      ),
      body: Column(
        children: [
          Textos(controlartextos: controlCorreo, etiqueta: 'Correo'),
          Textos(controlartextos: controlContrasena, etiqueta: 'Contraseña'),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PanelInicioEstudiante()));
              },
              child: const Text('Ingresar')),
          const SizedBox(
            height: 10,
          ),
          FlatButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegistroEstudiante()));
              },
              child: const Text('Registrarme')),
        ],
      ),
    );
  }
}
