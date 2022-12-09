import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyectbiblioteca/data/service/peticionesfirebase.dart';

class EliminarLIbro extends StatelessWidget {
  const EliminarLIbro({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controlIdGenerado = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Eliminar libro'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            TextField(
              controller: controlIdGenerado,
              decoration:
                  const InputDecoration(labelText: 'Ingrese el id del libro'),
            ),
            ElevatedButton(
                onPressed: () {
                  PeticionLibro.eliminarcatalogo(controlIdGenerado.text);
                  Get.offAllNamed('/panelAdministrador');
                },
                child: const Text("Eliminar libro")),
          ],
        ),
      ),
    );
  }
}
