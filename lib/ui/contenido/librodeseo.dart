import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyectbiblioteca/data/service/peticionesfirebase.dart';

class Deseo extends StatefulWidget {
  const Deseo({super.key});

  @override
  State<Deseo> createState() => _DeseoState();
}

class _DeseoState extends State<Deseo> {
  TextEditingController controlIdentificacion = TextEditingController();
  TextEditingController controlNumeroCelular = TextEditingController();
  TextEditingController controlNombreLibro = TextEditingController();
  TextEditingController controlComentario = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            TextField(
              controller: controlIdentificacion,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  labelText: 'Ingrese su numero de identificacion'),
            ),
            TextField(
              controller: controlNumeroCelular,
              keyboardType: TextInputType.number,
              decoration:
                  const InputDecoration(labelText: 'Ingrese su numero celular'),
            ),
            TextField(
              controller: controlNombreLibro,
              decoration: const InputDecoration(
                  labelText: 'Ingrese el nombre del libro'),
            ),
            TextField(
              controller: controlComentario,
              decoration:
                  const InputDecoration(labelText: 'Ingrese comentario'),
            ),
            ElevatedButton(
                onPressed: () {
                  var catalogo = <String, dynamic>{
                    'idPersona': controlIdentificacion.text,
                    'celular': controlNumeroCelular.text,
                    'nombrelibro': controlNombreLibro.text,
                    'comentario': controlComentario.text,
                  };

                  PeticionLibro.crearLibroDeseado(catalogo);
                  Get.offAllNamed('/panelEstudiante');
                },
                child: const Text("Enviar solicitud"))
          ],
        ),
      ),
    );
  }
}
