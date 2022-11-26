import 'package:flutter/material.dart';
import 'package:proyectbiblioteca/ui/contenido/registrarlibro.dart';

import 'consultarlibro.dart';

class GestionarLibros extends StatefulWidget {
  const GestionarLibros({super.key});

  @override
  State<GestionarLibros> createState() => _GestionarLibrosState();
}

class _GestionarLibrosState extends State<GestionarLibros> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Gestionar libros'),
    );
  }
}
