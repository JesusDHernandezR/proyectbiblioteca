/*import 'package:flutter/material.dart';
import 'package:proyectbiblioteca/domain/modelos/libro.dart';
import 'package:proyectbiblioteca/ui/contenido/widget.dart';

class RegistrarLibro extends StatefulWidget {
  final Libro gestionLibro;
  const RegistrarLibro({Key? key, required this.gestionLibro})
      : super(key: key);

  @override
  State<RegistrarLibro> createState() => _RegistrarLibroState();
}

class _RegistrarLibroState extends State<RegistrarLibro> {
  final List<Libro> _addLibro = [];
  TextEditingController controlisbn = TextEditingController();
  TextEditingController controlnombre = TextEditingController();
  TextEditingController controltitulo = TextEditingController();
  TextEditingController controleditorial = TextEditingController();
  TextEditingController controlfoto = TextEditingController();
  @override
  void initState() {
    controlnombre.text = widget.gestionLibro.nombre;
    controlisbn.text = widget.gestionLibro.isbn;
    controltitulo.text = widget.gestionLibro.titulo;
    controleditorial.text = widget.gestionLibro.editorial;

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            width: 10,
          ),
          Textos(
            controlartextos: controlisbn,
            etiqueta: 'Isbn',
          ),
          Textos(
            controlartextos: controlnombre,
            etiqueta: 'Nombre',
          ),
          Textos(
            controlartextos: controltitulo,
            etiqueta: 'Titulo',
          ),
          Textos(
            controlartextos: controleditorial,
            etiqueta: 'Editorial',
          ),
          ElevatedButton(
              onPressed: () {
                _addLibro.add(Libro(
                  isbn: controlisbn.text,
                  nombre: controlnombre.text,
                  titulo: controltitulo.text,
                  editorial: controleditorial.text,
                ));
                Navigator.pop(context, _addLibro);
              },
              child: const Text('Guardar')),
        ],
      ),
    );
  }
}*/
