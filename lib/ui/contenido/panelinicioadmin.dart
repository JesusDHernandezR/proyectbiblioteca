import 'package:flutter/material.dart';
import 'package:proyectbiblioteca/domain/modelos/libro.dart';
import 'package:proyectbiblioteca/ui/contenido/consultarlibro.dart';
import 'package:proyectbiblioteca/ui/contenido/gestionaradministrador.dart';
import 'package:proyectbiblioteca/ui/contenido/librodeseo.dart';
import 'package:proyectbiblioteca/ui/contenido/librosprestados.dart';
import 'package:proyectbiblioteca/ui/contenido/registrarlibro.dart';

class PanelInicio extends StatefulWidget {
  const PanelInicio({super.key});

  @override
  State<PanelInicio> createState() => _PanelInicioState();
}

class _PanelInicioState extends State<PanelInicio>
    with SingleTickerProviderStateMixin {
  final List<Libro>? libros = listLibros;
  Libro? libro;
  int seleccionarPagina = 0;
  TabController? _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        TabController(length: 5, initialIndex: seleccionarPagina, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
        backgroundColor: const Color.fromARGB(255, 213, 172, 111),
      ),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        width: 1, color: Color.fromARGB(255, 179, 139, 80)))),
            child: Material(
              color: const Color.fromARGB(255, 239, 195, 127),
              child: TabBar(
                  controller: _controller,
                  indicator: const BoxDecoration(
                      color: Color.fromARGB(255, 187, 138, 66)),
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  tabs: const [
                    Tab(
                      child: Text('Registrar libro'),
                    ),
                    Tab(
                      child: Text('Lista deseo'),
                    ),
                    Tab(
                      child: Text('Libros'),
                    ),
                    Tab(
                      child: Text('Libros prestados'),
                    ),
                    Tab(
                      child: Text('Administrador'),
                    ),
                  ]),
            ),
          ),
          Expanded(
              child: TabBarView(
            controller: _controller,
            children: [
              RegistrarLibro(
                gestionLibro: Libro(),
              ),
              const Deseo(),
              const ConsultarLibros(),
              const LibrosPrestados(),
              const GestionarAdministrador()
            ],
          ))
        ],
      ),
    );
  }
}
