import 'package:flutter/material.dart';

class RegistrarLibro extends StatefulWidget {
  const RegistrarLibro({super.key});

  @override
  State<RegistrarLibro> createState() => _RegistrarLibroState();
}

class _RegistrarLibroState extends State<RegistrarLibro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrar'),
      ),
    );
  }
}
