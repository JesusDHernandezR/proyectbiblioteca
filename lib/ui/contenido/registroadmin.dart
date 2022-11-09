import 'package:flutter/material.dart';
import 'package:proyectbiblioteca/ui/contenido/widget.dart';

class RegistrarAdmin extends StatefulWidget {
  const RegistrarAdmin({super.key});

  @override
  State<RegistrarAdmin> createState() => _RegistrarAdminState();
}

class _RegistrarAdminState extends State<RegistrarAdmin> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controlcodigo = TextEditingController();
    TextEditingController controlnombre = TextEditingController();
    TextEditingController controlcorreo = TextEditingController();
    TextEditingController controlcontrasena = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registro'),
      ),
      body: Column(
        children: [
          Textos(
            controlartextos: controlcodigo,
            etiqueta: 'Codigo',
          ),
          Textos(
            controlartextos: controlnombre,
            etiqueta: 'Nombre',
          ),
          Textos(
            controlartextos: controlcorreo,
            etiqueta: 'Correo',
          ),
          Textos(
            controlartextos: controlcontrasena,
            etiqueta: 'Contraseña',
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Guardar')),
        ],
      ),
    );
  }
}
