import 'package:flutter/material.dart';

class LibrosPrestados extends StatefulWidget {
  const LibrosPrestados({super.key});

  @override
  State<LibrosPrestados> createState() => _LibrosPrestadosState();
}

class _LibrosPrestadosState extends State<LibrosPrestados> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Prestados'));
  }
}
