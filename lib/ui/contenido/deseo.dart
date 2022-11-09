import 'package:flutter/material.dart';

class Deseo extends StatefulWidget {
  const Deseo({super.key});

  @override
  State<Deseo> createState() => _DeseoState();
}

class _DeseoState extends State<Deseo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de libros deseados'),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
