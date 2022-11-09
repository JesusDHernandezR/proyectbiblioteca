import 'package:flutter/material.dart';
import 'package:proyectbiblioteca/ui/contenido/panelinicioadmin.dart';
import 'package:proyectbiblioteca/ui/contenido/registroadmin.dart';
import 'package:proyectbiblioteca/ui/contenido/widget.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController controlCodigo = TextEditingController();
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
          Textos(controlartextos: controlCodigo, etiqueta: 'Codigo'),
          Textos(controlartextos: controlCorreo, etiqueta: 'Correo'),
          Textos(controlartextos: controlContrasena, etiqueta: 'Contraseña'),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PanelInicio()));
              },
              child: const Text('Ingresar')),
          const SizedBox(
            height: 20,
          ),
          FlatButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegistrarAdmin()));
              },
              child: const Text('Registrarme')),
        ],
      ),
    );
  }
}
