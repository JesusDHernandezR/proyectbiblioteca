import 'package:flutter/material.dart';

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
          const UserAccountsDrawerHeader(
            accountName: Text("CODEA APP"),
            accountEmail: Text("informes@gmail.com"),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image:
                        NetworkImage("https://dominio.com/imagen/recurso.jpg"),
                    fit: BoxFit.cover)),
          ),
          Ink(
            color: Colors.indigo,
            child: const ListTile(
              title: Text(
                "MENU 1",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const ListTile(
            title: Text("Libros"),
          ),
          const ListTile(
            title: Text(""),
          ),
          const ListTile(
            title: Text(""),
          )
        ]),
      ),
    );
  }
}
