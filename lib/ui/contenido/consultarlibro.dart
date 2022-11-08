import 'package:flutter/material.dart';

class ConsultarLibros extends StatefulWidget {
  const ConsultarLibros({super.key});

  @override
  State<ConsultarLibros> createState() => _ConsultarLibrosState();
}

class _ConsultarLibrosState extends State<ConsultarLibros> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Consultas'),
      ),
    );
  }
}
