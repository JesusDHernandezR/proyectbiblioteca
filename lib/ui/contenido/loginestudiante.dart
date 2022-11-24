import 'package:flutter/material.dart';
import 'package:proyectbiblioteca/ui/contenido/panelinicioestudiante.dart';
import 'package:proyectbiblioteca/ui/contenido/registroestudiante.dart';
import 'package:proyectbiblioteca/ui/contenido/widget.dart';

class LoginEstudiante extends StatefulWidget {
  const LoginEstudiante({super.key});

  @override
  State<LoginEstudiante> createState() => _LoginEstudianteState();
}

class _LoginEstudianteState extends State<LoginEstudiante> {
  TextEditingController controlCorreo = TextEditingController();
  TextEditingController controlContrasena = TextEditingController();
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
              Textos(controlartextos: controlContrasena, etiqueta: 'Contraseña'),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const PanelInicioEstudiante()));
                  },
                  child: const Text('Acceder')),
              const SizedBox(
                height: 10,
              ),
              FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegistroEstudiante()));
                  },
                  textColor: Colors.white,
                  child: const Text('Registrarse')),
            ],
          ),
        ),
      ),
    );
  }
}
