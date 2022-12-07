import 'dart:developer';

import 'package:firebase_storage/firebase_storage.dart' as fs;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:proyectbiblioteca/domain/modelos/libro.dart';

class PeticionLibro {
  static final fs.FirebaseStorage storage = fs.FirebaseStorage.instance;
  static final FirebaseFirestore _db = FirebaseFirestore.instance;

  static Future<void> crearLibro(Map<String, dynamic> catalogo, foto) async {
    var url = '';
    if (foto != null) {
      url = await cargarfoto(foto, catalogo['isbn']);
    }

    catalogo['foto'] = url.toString();

    await _db.collection('Libros').doc().set(catalogo).catchError((e) {});
    //return true;
  }

  static Future<dynamic> cargarfoto(var foto, var idLibro) async {
    final fs.Reference storageReference =
        fs.FirebaseStorage.instance.ref().child("Libros");

    fs.TaskSnapshot taskSnapshot =
        await storageReference.child(idLibro).putFile(foto);

    var url = await taskSnapshot.ref.getDownloadURL();

    return url.toString();
  }

  static Future<void> actualizarLibro(
      String id, Map<String, dynamic> catalogo) async {
    await _db.collection('Libros').doc(id).update(catalogo).catchError((e) {
      log(e);
    });
    //return true;
  }

  static Future<void> eliminarcatalogo(String id) async {
    await _db.collection('Libros').doc(id).delete().catchError((e) {
      log(e);
    });
    //return true;
  }

  static Future<List<Libro>> consultarGral() async {
    List<Libro> lista = [];
    await _db.collection("Libros").get().then((respuesta) {
      for (var doc in respuesta.docs) {
        log(doc.data().toString());
        lista.add(Libro.desdeDoc(doc.data()));
      }


    });

    return lista;
  }
}
