
import 'package:get/get.dart';
import 'package:proyectbiblioteca/data/service/peticionesfirebase.dart';
import 'package:proyectbiblioteca/domain/modelos/libro.dart';

class ConsultasController extends GetxController {
  final Rxn<List<Libro>> _libroFirestore = Rxn<List<Libro>>();

  Future<void> consultaLibros() async {
    _libroFirestore.value = await PeticionLibro.consultarGral();
  }

  List<Libro>? get getLibrosGral => _libroFirestore.value;
}