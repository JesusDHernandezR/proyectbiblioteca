import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../../data/service/peticionesfirebase.dart';
import '../../domain/controller/controlfirebase.dart';

class ActualizarLibro extends StatefulWidget {
  const ActualizarLibro({super.key});

  @override
  State<ActualizarLibro> createState() => _ActualizarLibroState();
}

class _ActualizarLibroState extends State<ActualizarLibro> {
  var _image;
  ImagePicker picker = ImagePicker();
  TextEditingController controlIsbn = TextEditingController();
  TextEditingController controlNombre = TextEditingController();
  TextEditingController controlTitulo = TextEditingController();
  TextEditingController controlEditorial = TextEditingController();
  TextEditingController controlIdLibro = TextEditingController();
  _camGaleria(bool op) async {
    XFile? image;
    image = op
        ? await picker.pickImage(source: ImageSource.camera, imageQuality: 50)
        : await picker.pickImage(source: ImageSource.gallery, imageQuality: 50);

    setState(() {
      _image = (image != null) ? File(image.path) : null;
    });
  }

  @override
  Widget build(BuildContext context) {
    ConsultasController controladorLibro = Get.find();
    controladorLibro.consultaLibros().then((value) => null);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Actualizar libro'),
      ),
      body: Obx(
        () => controladorLibro.getLibrosGral?.isEmpty == false
            ? ListView.builder(
                itemCount: controladorLibro.getLibrosGral?.isEmpty == true
                    ? 0
                    : controladorLibro.getLibrosGral!.length,
                itemBuilder: (context, posicion) {
                  return Column(
                    children: [
                      Center(
                        child: GestureDetector(
                          onTap: () async {
                            _opcioncamara(context);
                          },
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.blue,
                            child: _image != null
                                ? ClipRRect(
                                    borderRadius: BorderRadius.circular(48),
                                    child: Image.file(
                                      _image,
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.fitHeight,
                                    ),
                                  )
                                : Container(
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(48),
                                    ),
                                    width: 100,
                                    height: 100,
                                    child: const Icon(
                                      Icons.camera_alt_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                          ),
                        ),
                      ),
                      TextField(
                        controller: controlIdLibro,
                        decoration: const InputDecoration(
                            labelText: 'Ingrese el id generado del libro'),
                      ),
                      TextField(
                        controller: controlIsbn,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText:
                                controladorLibro.getLibrosGral![posicion].isbn),
                      ),
                      TextField(
                        controller: controlNombre,
                        decoration: InputDecoration(
                            labelText: controladorLibro
                                .getLibrosGral![posicion].nombre),
                      ),
                      TextField(
                        controller: controlTitulo,
                        decoration: InputDecoration(
                            labelText: controladorLibro
                                .getLibrosGral![posicion].titulo),
                      ),
                      TextField(
                        controller: controlEditorial,
                        decoration: InputDecoration(
                            labelText: controladorLibro
                                .getLibrosGral![posicion].editorial),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            var catalogo = <String, dynamic>{
                              'isbn': controlIsbn.text,
                              'nombre': controlNombre.text,
                              'titulo': controlTitulo.text,
                              'editorial': controlEditorial.text,
                              'foto': ''
                            };

                            PeticionLibro.actualizarLibro(
                                controlIdLibro.text, catalogo);
                            Get.offAllNamed('/panelAdministrador');
                          },
                          child: const Text("Actualizar libro")),
                    ],
                  );
                })
            : const Icon(Icons.abc),
      ),
    );
  }

  void _opcioncamara(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Wrap(
              children: <Widget>[
                ListTile(
                    leading: const Icon(Icons.photo_library),
                    title: const Text('Imagen de Galeria'),
                    onTap: () {
                      _camGaleria(false);
                      Get.back();
                      // Navigator.of(context).pop();
                    }),
                ListTile(
                  leading: const Icon(Icons.photo_camera),
                  title: const Text('Capturar Imagen'),
                  onTap: () {
                    _camGaleria(true);
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          );
        });
  }
}
