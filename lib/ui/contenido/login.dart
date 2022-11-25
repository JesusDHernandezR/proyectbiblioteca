import 'package:flutter/material.dart';
import 'package:proyectbiblioteca/ui/contenido/panelinicioadmin.dart';
import 'package:proyectbiblioteca/ui/contenido/registroadmin.dart';
import 'package:proyectbiblioteca/ui/contenido/widget.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController controlCodigo = TextEditingController();
  TextEditingController controlCorreo = TextEditingController();
  TextEditingController controlContrasena = TextEditingController();

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
              Textos(controlartextos: controlCodigo, etiqueta: 'Codigo'),
              Textos(controlartextos: controlCorreo, etiqueta: 'Correo'),
              Textos(
                  controlartextos: controlContrasena, etiqueta: 'Contraseña'),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PanelInicio()));
                  },
                  child: const Text('Acceder')),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegistrarAdmin()));
                  },
                  child: const Text('Registrarme')),
            ],
          ),
        ),
      ),
    );
  }
}
