import 'package:flutter/material.dart';
import 'package:proyectbiblioteca/ui/contenido/deseo.dart';

class PanelInicioEstudiante extends StatefulWidget {
  const PanelInicioEstudiante({super.key});

  @override
  State<PanelInicioEstudiante> createState() => _PanelInicioEstudiante();
}

class _PanelInicioEstudiante extends State<PanelInicioEstudiante> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Estudiante'),
      ),
      body: Drawer(
        child: ListView(children: <Widget>[
          Ink(
            color: Colors.indigo,
          ),
          ElevatedButton(
              onPressed: () {},
              child: const ListTile(
                title: Text('Solicitar Libros'),
              )),
          ElevatedButton(
              onPressed: () {},
              child: const ListTile(
                title: Text('Consultar prestamos'),
              )),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Deseo(),
                    ));
              },
              child: const ListTile(
                title: Text('Deseo'),
              )),
        ]),
      ),
    );
  }
}
