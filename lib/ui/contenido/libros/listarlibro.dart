import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyectbiblioteca/ui/contenido/eliminar.dart';
import '../../../../domain/controller/controlfirebase.dart';

class ListarLibro extends StatelessWidget {
  const ListarLibro({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ConsultasController controladorLibro = Get.find();
    controladorLibro.consultaLibros().then((value) => null);

    return Scaffold(
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
                    subtitle: Text(
                        "isbn: ${controladorLibro.getLibrosGral![posicion].isbn}"),
                    trailing: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const EliminarLIbro(),
                            ));
                      },
                      icon: const Icon(Icons.delete),
                      color: const Color.fromARGB(255, 142, 69, 64),
                    ),
                    onLongPress: () {
                      showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                                title: const Text('Modificar'),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Get.offAllNamed('/actualizarLibro');
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

                    // onLongPress: () {
                    //   showDialog(
                    //       context: context,
                    //       builder: (_) => AlertDialog(
                    //             title: const Text('Eliminar libro'),
                    //             content: Text(
                    //                 'Siempre desea eliminar a: ${controladorLibro.getLibrosGral![posicion].nombre}'),
                    //             actions: [
                    //               TextButton(
                    //                   onPressed: () {
                    //                     PeticionLibro.eliminarcatalogo();
                    //                     Navigator.pop(context);
                    //                   },
                    //                   child: const Text(
                    //                     'Eliminar',
                    //                     style: TextStyle(color: Colors.red),
                    //                   )),
                    //               TextButton(
                    //                   onPressed: () {
                    //                     Navigator.pop(context);
                    //                   },
                    //                   child: const Text(
                    //                     'Cancelar',
                    //                     style: TextStyle(color: Colors.blue),
                    //                   ))
                    //             ],
                    //           ));
                    // },
                  );
                })
            : const Icon(Icons.abc),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.offAllNamed('/agregarlibro');
        },
        child: const Icon(Icons.library_add),
      ),
    );
  }
}
