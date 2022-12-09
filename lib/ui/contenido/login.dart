import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyectbiblioteca/domain/controller/controlusuariof.dart';
import 'package:proyectbiblioteca/ui/auth/registrosecretariaf.dart';
import 'package:proyectbiblioteca/ui/contenido/widget.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController controlCorreo = TextEditingController();
  TextEditingController controlContrasena = TextEditingController();
  ControlAuthFirebase controlAdmin = Get.find();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Administrador',
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
                    height: 7,
                    fontSize: 30,
                  )),
              Textos(controlartextos: controlCorreo, etiqueta: 'Correo'),
              Textos(
                  controlartextos: controlContrasena, etiqueta: 'Contraseña'),
              ElevatedButton(
                onPressed: () {
                  controlAdmin.update();
                  controlAdmin
                      .ingresarCorreo(
                          controlCorreo.text, controlContrasena.text)
                      .then((value) {
                    if (controlCorreo.text == '' &&
                        controlContrasena.text == '' &&
                        controlAdmin.emailf != controlCorreo.text &&
                        controlAdmin.uid != controlContrasena.text) {
                      showDialog(
                          context: context,
                          builder: (context) => const Login());
                    } else {
                      if (controlAdmin.emailf != 'Sin Registro' &&
                          controlAdmin.uid != '') {
                        Get.offAllNamed('/panelAdministrador');
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
              //       Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //               builder: (context) => const PanelInicio()));
              //     },
              //     child: const Text('Acceder')),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegistroSecretariaf()));
                  },
                  child: const Text('Registrarme')),
            ],
          ),
        ),
      ),
    );
  }
}
