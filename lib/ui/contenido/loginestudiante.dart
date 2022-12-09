import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyectbiblioteca/domain/controller/controlusuariof.dart';
import 'package:proyectbiblioteca/ui/auth/loginf.dart';
import 'package:proyectbiblioteca/ui/contenido/widget.dart';

class LoginEstudiante extends StatefulWidget {
  const LoginEstudiante({super.key});

  @override
  State<LoginEstudiante> createState() => _LoginEstudianteState();
}

class _LoginEstudianteState extends State<LoginEstudiante> {
  TextEditingController controlCorreo = TextEditingController();
  TextEditingController controlContrasena = TextEditingController();
  ControlAuthFirebase controlE = Get.find();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Estudiante',
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(
              'https://c7.alamy.com/compes/2e5eg9y/diseno-de-estanterias-de-colores-para-libreria-ereader-biblioteca-simbolo-de-la-aplicacion-o-casa-decoracion-cartel-imprimir-abstracto-vector-ilustracion-2e5eg9y.jpg'),
          fit: BoxFit.cover,
        )),
        child: Card(
          clipBehavior: Clip.antiAlias,
          color: const Color.fromARGB(221, 68, 62, 62),
          child: Column(
            children: [
              const SizedBox(
                height: 65,
              ),
              const Text('INICIO DE SESION',
                  style: TextStyle(
                    color: Colors.white,
                    backgroundColor: Colors.transparent,
                    height: 10,
                    fontSize: 30,
                  )),
              Textos(controlartextos: controlCorreo, etiqueta: 'Correo'),
              Textos(
                  controlartextos: controlContrasena, etiqueta: 'Contraseña'),

              ElevatedButton(
                onPressed: () {
                  controlE.update();
                  controlE
                      .ingresarCorreo(
                          controlCorreo.text, controlContrasena.text)
                      .then((value) {
                    if (controlCorreo.text == '' &&
                        controlContrasena.text == '' &&
                        controlE.emailf != controlCorreo.text &&
                        controlE.uid != controlContrasena.text) {
                      showDialog(
                          context: context,
                          builder: (context) => const LoginEstudiante());
                    } else {
                      if (controlE.emailf != 'Sin Registro' &&
                          controlE.uid != '') {
                        Get.offAllNamed('/panelEstudiante');
                      } else {
                        Get.showSnackbar(const GetSnackBar(
                          title: 'Validacion de Usuarios',
                          message: 'Error desde logica',
                          icon: Icon(Icons.warning),
                          duration: Duration(seconds: 5),
                          backgroundColor: Colors.red,
                        ));
                      }
                    }
                  });
                },
                child: const Text('Ingresar'),
              ),
              // ElevatedButton(
              //     onPressed: () {

              //       // Navigator.push(
              //       //     context,
              //       //     MaterialPageRoute(
              //       //         builder: (context) =>
              //       //             const PanelInicioEstudiante()));
              //     },
              //     child: const Text('Acceder')),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginF()));
                  },
                  child: const Text('Registrarse')),
            ],
          ),
        ),
      ),
    );
  }
}
