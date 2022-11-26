import 'package:flutter/material.dart';

class GestionarAdministrador extends StatefulWidget {
  const GestionarAdministrador({super.key});

  @override
  State<GestionarAdministrador> createState() => _GestionarAdministradorState();
}

class _GestionarAdministradorState extends State<GestionarAdministrador> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Secretarias',
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}
