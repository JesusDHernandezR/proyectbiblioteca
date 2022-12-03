import 'package:flutter/material.dart';
import 'package:proyectbiblioteca/domain/modelos/libro.dart';
import 'package:proyectbiblioteca/ui/contenido/registrarlibro.dart';

class ConsultarLibros extends StatefulWidget {
  const ConsultarLibros({super.key});

  @override
  State<ConsultarLibros> createState() => _ConsultarLibrosState();
}

class _ConsultarLibrosState extends State<ConsultarLibros> {
  @override
  Widget build(BuildContext context) {
    final List<Libro> _libros = listLibros;
    return Center(
      child: ListView.builder(
          itemCount: _libros.length,
          itemBuilder: (context, pos) {
            return ListTile(
              onLongPress: () {},
              onTap: () {
                Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) =>
                                RegistrarLibro(gestionLibro: _libros[pos])))
                    .then((resultado) {
                  if (resultado != null) {
                    _libros[pos] = resultado[0];
                    setState(() {});
                  }
                });
              },
              title: Text(_libros[pos].isbn),
              subtitle: Text(_libros[pos].titulo),
            );
          }),
    );
  }
}
