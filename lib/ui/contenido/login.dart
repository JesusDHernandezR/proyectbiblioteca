import 'package:flutter/material.dart';
import 'package:proyectbiblioteca/ui/contenido/panelinicio.dart';
import 'package:proyectbiblioteca/ui/contenido/widget.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController controlNombre = TextEditingController();
  TextEditingController controlContrasena = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ingresar'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/2204_w037_n003_306b_p1_306.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Textos(controlartextos: controlNombre, etiqueta: 'Usuario'),
            Textos(controlartextos: controlContrasena, etiqueta: 'Contraseña'),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PanelInicio()));
                },
                child: const Text('Ingresar')),
          ],
        ),
      ),
    );
  }
}
