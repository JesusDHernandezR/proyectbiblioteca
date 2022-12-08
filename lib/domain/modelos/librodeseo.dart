class LibroDeseo {
  final String identificacion;
  final String numeroCelular;
  final String nombreLibro;
  final String comentario;

  LibroDeseo(
      {required this.identificacion,
      required this.numeroCelular,
      required this.nombreLibro,
      required this.comentario
      });

  factory LibroDeseo.desdeDoc(Map<String, dynamic> data) {
    return LibroDeseo(
      identificacion: data['idPersona'] ?? '',
      numeroCelular: data['celular'] ?? '',
      nombreLibro: data['nombrelibro'] ?? '',
      comentario: data['comentario'] ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        "idPersona": identificacion,
        "celular": numeroCelular,
        "nombrelibro": nombreLibro,
        "comentario": comentario,
      };
}