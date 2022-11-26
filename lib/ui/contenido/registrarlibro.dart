import 'package:flutter/material.dart';
import 'package:proyectbiblioteca/ui/contenido/widget.dart';

class RegistrarLibro extends StatefulWidget {
  const RegistrarLibro({super.key});

  @override
  State<RegistrarLibro> createState() => _RegistrarLibroState();
}

class _RegistrarLibroState extends State<RegistrarLibro> {
  TextEditingController controlisbn = TextEditingController();
  TextEditingController controlnombre = TextEditingController();
  TextEditingController controltitulo = TextEditingController();
  TextEditingController controleditorial = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            width: 10,
          ),
          Textos(
            controlartextos: controlnombre,
            etiqueta: 'Isbn',
          ),
          Textos(
            controlartextos: controlnombre,
            etiqueta: 'Nombre',
          ),
          Textos(
            controlartextos: controltitulo,
            etiqueta: 'Titulo',
          ),
          Textos(
            controlartextos: controleditorial,
            etiqueta: 'Editorial',
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Guardar')),
        ],
      ),
    );
  }
}
