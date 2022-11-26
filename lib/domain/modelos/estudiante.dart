class Estudiante {
  final String identificacion;
  final String nombre;
  final String apellido;
  final String correo;
  final String contrasena;
  Estudiante(
      {required this.identificacion,
      required this.nombre,
      required this.apellido,
      required this.correo,
      required this.contrasena});

  factory Estudiante.desdeJson(Map<String, dynamic> json) {
    return Estudiante(
        identificacion: json['id'],
        nombre: json['nombre'],
        apellido: json['apellido'],
        correo: json['correo'],
        contrasena: json['contrasena']);
  }
}
