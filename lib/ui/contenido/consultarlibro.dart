/*import 'package:flutter/material.dart';
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
    final List<Libro> libros = [listLibros];
    return Center(
      child: ListView.builder(
          itemCount: libros.length,
          itemBuilder: (context, pos) {
            return ListTile(
              onLongPress: () {},
              onTap: () {
                Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) =>
                                RegistrarLibro(gestionLibro: libros[pos])))
                    .then((resultado) {
                  if (resultado != null) {
                    libros[pos] = resultado[0];
                    setState(() {});
                  }
                });
              },
              title: Text(libros[pos].isbn),
              subtitle: Text(libros[pos].titulo),
            );
          }),
    );
  }
}*/
