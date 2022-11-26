import 'package:flutter/material.dart';

class Deseo extends StatefulWidget {
  const Deseo({super.key});

  @override
  State<Deseo> createState() => _DeseoState();
}

class _DeseoState extends State<Deseo> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Deseados'));
  }
}
