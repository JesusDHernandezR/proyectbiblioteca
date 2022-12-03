import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:proyectbiblioteca/domain/modelos/secretaria.dart';

class PeticionEstudiante {
  static Future<List<Secretaria>> validarUser(
      String user, String passwd) async {
    var url = Uri.parse(
        "https://desarolloweb2021a.000webhostapp.com/APIMOVIL/listaruser.php");
    final response = await http.post(url, body: {'user': user, 'pass': passwd});
    return compute(convertir, response.body);
  }

  static List<Secretaria> convertir(String respuestabody) {
    final pasar = json.decode(respuestabody).cast(<String, dynamic>{});

    return pasar.map<Secretaria>((json) => Secretaria.desdeJson(json)).toList();
  }
}
