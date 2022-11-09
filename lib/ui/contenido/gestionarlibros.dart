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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Administración de libros'),
      ),
      body: Drawer(
        child: ListView(children: <Widget>[
          Ink(
            color: Colors.indigo,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegistrarLibro(),
                    ));
              },
              child: const ListTile(
                title: Text('Registrar Libros'),
              )),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ConsultarLibros(),
                    ));
              },
              child: const ListTile(
                title: Text('Consultar Libros'),
              )),
        ]),
      ),
    );
  }
}
