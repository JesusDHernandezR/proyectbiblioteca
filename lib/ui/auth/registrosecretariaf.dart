import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyectbiblioteca/domain/controller/controlusuariof.dart';

import '../contenido/widget.dart';

class RegistroSecretariaf extends StatefulWidget {
  const RegistroSecretariaf({super.key});

  @override
  State<RegistroSecretariaf> createState() => _RegistroSecretariafState();
}

class _RegistroSecretariafState extends State<RegistroSecretariaf> {
  TextEditingController controlcodigo = TextEditingController();
  TextEditingController controlnombre = TextEditingController();
  TextEditingController controlcorreo = TextEditingController();
  TextEditingController controlcontrasena = TextEditingController();
  ControlAuthFirebase controlSecretaria = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Registrar')),
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
              controlSecretaria.update();
              controlSecretaria
                  .registrarEmail(controlcorreo.text, controlcontrasena.text)
                  .then((value) {
                if (controlSecretaria.emailf != 'Sin registro') {
                  Get.offAllNamed('/Inicio');
                } else {
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
        ],
      ),
    );
  }
}
