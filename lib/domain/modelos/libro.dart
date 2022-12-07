class Libro {
  final String isbn;
  final String nombre;
  final String titulo;
  final String editorial;
  final String foto;

  Libro(
      {required this.isbn,
      required this.nombre,
      required this.titulo,
      required this.editorial,
      required this.foto,
      });

  factory Libro.desdeDoc(Map<String, dynamic> data) {
    return Libro(
      isbn: data['isbn'] ?? '',
      nombre: data['nombre'] ?? '',
      titulo: data['titulo'] ?? '',
      editorial: data['editorial'] ?? '',
      foto: data['foto'] ?? ''
    );
  }

  Map<String, dynamic> toJson() => {
        "isbn": isbn,
        "nombre": nombre,
        "titulo": titulo,
        "editorial": editorial,
        "foto": foto,
      };
}
