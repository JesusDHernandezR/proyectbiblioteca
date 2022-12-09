class LibroPrestado {
  final String identificacion;
  final String numeroCelular;
  final String nombreLibro;
  final String comentario;

  LibroPrestado(
      {required this.identificacion,
      required this.numeroCelular,
      required this.nombreLibro,
      required this.comentario
      });

  factory LibroPrestado.desdeDoc(Map<String, dynamic> data) {
    return LibroPrestado(
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