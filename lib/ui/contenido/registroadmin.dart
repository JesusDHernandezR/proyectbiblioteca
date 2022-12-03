import 'package:flutter/material.dart';
import 'package:proyectbiblioteca/domain/modelos/secretaria.dart';
import 'package:proyectbiblioteca/ui/contenido/widget.dart';

class RegistrarAdmin extends StatefulWidget {
  const RegistrarAdmin({super.key});

  @override
  State<RegistrarAdmin> createState() => _RegistrarAdminState();
}

class _RegistrarAdminState extends State<RegistrarAdmin> {
  List<Secretaria> _clienteAdd = [];
  TextEditingController controlcodigo = TextEditingController();
  TextEditingController controlnombre = TextEditingController();
  TextEditingController controlcorreo = TextEditingController();
  TextEditingController controlcontrasena = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registro'),
      ),
      body: Column(
        children: [
          Textos(
            controlartextos: controlcodigo,
            etiqueta: 'Codigo',
          ),
          Textos(
            controlartextos: controlnombre,
            etiqueta: 'Nombre',
          ),
          Textos(
            controlartextos: controlcorreo,
            etiqueta: 'Correo',
          ),
          Textos(
            controlartextos: controlcontrasena,
            etiqueta: 'Contraseña',
          ),
          ElevatedButton(
              onPressed: () {
                if (controlcodigo.text.isNotEmpty &&
                    controlnombre.text.isNotEmpty &&
                    controlcorreo.text.isNotEmpty &&
                    controlcontrasena.text.isNotEmpty) {
                  _clienteAdd.add(Secretaria(
                      codigo: controlcodigo.text,
                      nombre: controlnombre.text,
                      correo: controlcorreo.text,
                      contrasena: controlcontrasena.text));

                  // Devuelvo los datos

                  Navigator.pop(context, _clienteAdd);
                }
              },
              child: const Text('Guardar')),
        ],
      ),
    );
  }
}
