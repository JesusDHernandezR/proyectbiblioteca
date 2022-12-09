import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyectbiblioteca/data/service/peticionesfirebase.dart';

import '../../../domain/controller/controlfirebase.dart';

class ListarLibroDeseo extends StatelessWidget {
  const ListarLibroDeseo({super.key});

  @override
  Widget build(BuildContext context) {
    ConsultasController controladorLibro = Get.find();
    controladorLibro.consultaLibrosDeseados().then((value) => null);
    return Scaffold(
      body: Obx(
        () => controladorLibro.getLibrosGraldeseo?.isEmpty == false
            ? ListView.builder(
                itemCount: controladorLibro.getLibrosGraldeseo?.isEmpty == true
                    ? 0
                    : controladorLibro.getLibrosGraldeseo!.length,
                itemBuilder: (context, posicion) {
                  return ListTile(
                    title: Text(
                        "Libro: ${controladorLibro.getLibrosGraldeseo![posicion].nombreLibro}"),
                    subtitle: Text(
                        "IdUsuario: ${controladorLibro.getLibrosGraldeseo![posicion].identificacion}"),
                    trailing: Container(
                      width: 80,
                      height: 40,
                      color: Colors.transparent,
                      child: Text(
                          "Celular: ${controladorLibro.getLibrosGraldeseo![posicion].numeroCelular}"),
                    ),
                    onLongPress: () {
                      showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                                title: const Text('Solicitud'),
                                content: Text(
                                    'Siempre desea aceptar la solicitud de: ${controladorLibro.getLibrosGraldeseo![posicion].identificacion}'),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        var catalogo = <String, dynamic>{
                                          'idPersona': controladorLibro
                                              .getLibrosGraldeseo![posicion]
                                              .identificacion,
                                          'celular': controladorLibro
                                              .getLibrosGraldeseo![posicion]
                                              .numeroCelular,
                                          'nombrelibro': controladorLibro
                                              .getLibrosGraldeseo![posicion]
                                              .nombreLibro,
                                          'comentario': controladorLibro
                                              .getLibrosGraldeseo![posicion]
                                              .comentario,
                                        };
                                        PeticionLibro.crearLibroPrestado(
                                            catalogo);
                                        Navigator.pop(context);
                                      },
                                      child: const Text(
                                        'Aceptar',
                                        style: TextStyle(color: Colors.red),
                                      )),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text(
                                        'Rechazar',
                                        style: TextStyle(color: Colors.blue),
                                      ))
                                ],
                              ));
                    },
                  );
                })
            : const Icon(Icons.abc),
      ),
    );
  }
}
