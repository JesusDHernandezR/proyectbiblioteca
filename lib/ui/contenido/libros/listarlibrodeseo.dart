import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                  );
                })
            : const Icon(Icons.abc),
      ),
    );
  }
}
