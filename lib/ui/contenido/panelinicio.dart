import 'package:flutter/material.dart';
import 'package:proyectbiblioteca/ui/contenido/consultarlibro.dart';
import 'package:proyectbiblioteca/ui/contenido/registrarlibro.dart';
import 'package:proyectbiblioteca/ui/contenido/solicitudes.dart';

class PanelInicio extends StatefulWidget {
  const PanelInicio({super.key});

  @override
  State<PanelInicio> createState() => _PanelInicioState();
}

class _PanelInicioState extends State<PanelInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
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
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Solicitudes(),
                    ));
              },
              child: const ListTile(
                title: Text('Gestionar solicitudes'),
              )),
        ]),
      ),
    );
  }
}
