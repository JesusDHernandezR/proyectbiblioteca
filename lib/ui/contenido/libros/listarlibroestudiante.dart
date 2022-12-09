import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../domain/controller/controlfirebase.dart';

class ListarLibroEstudiante extends StatelessWidget {
  const ListarLibroEstudiante({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ConsultasController controladorLibro = Get.find();
    controladorLibro.consultaLibros().then((value) => null);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Disponibles'),
      ),
      body: Obx(
        () => controladorLibro.getLibrosGral?.isEmpty == false
            ? ListView.builder(
                itemCount: controladorLibro.getLibrosGral?.isEmpty == true
                    ? 0
                    : controladorLibro.getLibrosGral!.length,
                itemBuilder: (context, posicion) {
                  return ListTile(
                    leading: Container(
                      padding: const EdgeInsets.all(5),
                      width: 50,
                      height: 50,
                      child: controladorLibro.getLibrosGral![posicion].foto !=
                              ''
                          ? Image.network(
                              controladorLibro.getLibrosGral![posicion].foto)
                          : const Icon(Icons.photo),
                    ),
                    title:
                        Text(controladorLibro.getLibrosGral![posicion].nombre),
                    subtitle:
                        Text(controladorLibro.getLibrosGral![posicion].titulo),
                    trailing: Container(
                      width: 80,
                      height: 40,
                      color: Colors.yellow,
                      child: Text(
                          controladorLibro.getLibrosGral![posicion].editorial),
                    ),
                  );
                })
            : const Icon(Icons.abc),
      ),
    );
  }
}