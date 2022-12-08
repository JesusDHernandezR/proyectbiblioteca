
import 'package:get/get.dart';
import 'package:proyectbiblioteca/data/service/peticionesfirebase.dart';
import 'package:proyectbiblioteca/domain/modelos/libro.dart';
import 'package:proyectbiblioteca/domain/modelos/librodeseo.dart';

class ConsultasController extends GetxController {
  final Rxn<List<Libro>> _libroFirestore = Rxn<List<Libro>>();
  final Rxn<List<LibroDeseo>> _libroFirestoredeseo = Rxn<List<LibroDeseo>>();
  Future<void> consultaLibros() async {
    _libroFirestore.value = await PeticionLibro.consultarGral();
  }
  List<Libro>? get getLibrosGral => _libroFirestore.value;

  Future<void> consultaLibrosDeseados() async {
    _libroFirestoredeseo.value = await PeticionLibro.consultarGralDeseados();
  }
  List<LibroDeseo>? get getLibrosGraldeseo => _libroFirestoredeseo.value;
}