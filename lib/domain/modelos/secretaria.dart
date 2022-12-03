class Secretaria {
  final String codigo;
  final String nombre;
  final String correo;
  final String contrasena;

  Secretaria(
      {required this.codigo,
      required this.nombre,
      required this.correo,
      required this.contrasena});

  factory Secretaria.desdeJson(Map<String, dynamic> json) {
    return Secretaria(
        codigo: json['id'],
        nombre: json['nombre'],
        correo: json['correo'],
        contrasena: json['contrasena']);
  }
}
