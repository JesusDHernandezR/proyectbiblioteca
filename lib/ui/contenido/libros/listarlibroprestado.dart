import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../domain/controller/controlfirebase.dart';

class ListarLibroPrestado extends StatelessWidget {
  const ListarLibroPrestado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ConsultasController controladorLibro = Get.find();
    controladorLibro.consultaLibrosPrestados().then((value) => null);
    return Scaffold(
      body: Obx(
        () => controladorLibro.getLibrosGralprestado?.isEmpty == false
            ? ListView.builder(
                itemCount:
                    controladorLibro.getLibrosGralprestado?.isEmpty == true
                        ? 0
                        : controladorLibro.getLibrosGralprestado!.length,
                itemBuilder: (context, posicion) {
                  return ListTile(
                    title: Text(controladorLibro
                        .getLibrosGralprestado![posicion].identificacion),
                    subtitle: Text(controladorLibro
                        .getLibrosGralprestado![posicion].numeroCelular),
                    trailing: Container(
                      width: 80,
                      height: 40,
                      color: Colors.transparent,
                      child: Text(controladorLibro
                          .getLibrosGralprestado![posicion].nombreLibro),
                    ),
                  );
                })
            : const Icon(Icons.abc),
      ),
    );
  }
}
