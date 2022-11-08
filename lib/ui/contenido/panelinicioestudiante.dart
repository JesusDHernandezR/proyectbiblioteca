import 'package:flutter/material.dart';

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
          const ListTile(
            title: Text(""),
          )
        ]),
      ),
    );
  }
}
