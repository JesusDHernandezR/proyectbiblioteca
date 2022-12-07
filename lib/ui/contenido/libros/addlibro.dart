import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:proyectbiblioteca/data/service/peticionesfirebase.dart';

class AgregarLibro extends StatefulWidget {
  const AgregarLibro({Key? key}) : super(key: key);

  @override
  State<AgregarLibro> createState() => _AgregarLibroState();
}

class _AgregarLibroState extends State<AgregarLibro> {
  var _image;
  ImagePicker picker = ImagePicker();
  TextEditingController controlIsbn = TextEditingController();
  TextEditingController controlNombre = TextEditingController();
  TextEditingController controlTitulo = TextEditingController();
  TextEditingController controlEditorial = TextEditingController();

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
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
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
              controller: controlIsbn,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Ingrese el Isbn'),
            ),
            TextField(
              controller: controlNombre,
              decoration: const InputDecoration(labelText: 'Ingrese el Nombre'),
            ),
            TextField(
              controller: controlTitulo,
              decoration: const InputDecoration(labelText: 'Ingrese el Titulo'),
            ),
            TextField(
              controller: controlEditorial,
              decoration:
                  const InputDecoration(labelText: 'Ingrese la Editorial'),
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

                  PeticionLibro.crearLibro(catalogo, _image);
                  Get.offAllNamed('/panelAdministrador');
                },
                child: const Text("Guardar libro"))
          ],
        ),
      ),
    );
  }

//Seleccionar la camara o la galeria

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
