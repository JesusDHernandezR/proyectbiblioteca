import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyectbiblioteca/domain/controller/controlusuariof.dart';
import 'package:proyectbiblioteca/domain/modelos/estudiante.dart';
import 'package:proyectbiblioteca/ui/contenido/widget.dart';

class LoginF extends StatefulWidget {
  const LoginF({super.key});

  @override
  State<LoginF> createState() => _LoginFState();
}

class _LoginFState extends State<LoginF> {
  List<Estudiante> _clienteAdd = [];
  TextEditingController controlnombre = TextEditingController();
  TextEditingController controlapellido = TextEditingController();
  TextEditingController controlcorreo = TextEditingController();
  TextEditingController controlcontrasena = TextEditingController();
  ControlAuthFirebase controlUsuario = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Registrar')),
      body: Column(
        children: [
          Textos(
            controlartextos: controlnombre,
            etiqueta: 'Nombres',
          ),
          Textos(
            controlartextos: controlapellido,
            etiqueta: 'Apellidos',
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
              controlUsuario.update();
              controlUsuario
                  .registrarEmail(controlcorreo.text, controlcontrasena.text)
                  .then((value) {
                if (controlUsuario.emailf != 'Sin registro') {
                  Get.offAllNamed('/Inicio');
                } else if (controlUsuario.emailf.isEmpty ||
                    controlUsuario.uid.isEmpty) {
                  Get.showSnackbar(const GetSnackBar(
                    title: 'Validacion de usuario',
                    message: 'Datos incorrectos',
                    icon: Icon(Icons.warning),
                    duration: Duration(seconds: 5),
                    backgroundColor: Colors.red,
                    //123_P@jj.Jose
                  ));
                }
              });
            },
            child: const Text('Guardar'),
          ),
          // ElevatedButton(
          //   //Boton de Enviar Datos
          //   onPressed: () {
          //     if (controlnombre.text.isNotEmpty &&
          //         controlapellido.text.isNotEmpty &&
          //         controlcorreo.text.isNotEmpty &&
          //         controlcontrasena.text.isNotEmpty) {
          //       _clienteAdd.add(Estudiante(
          //           nombre: controlnombre.text,
          //           apellido: controlapellido.text,
          //           correo: controlcorreo.text,
          //           contrasena: controlcontrasena.text));

          //       // Devuelvo los datos

          //       Navigator.pop(context, _clienteAdd);
          //     }
          //   },
          //   child: const Text('Guardar Datos'),
          // ),
        ],
      ),
    );
  }
}
