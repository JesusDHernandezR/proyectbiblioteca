import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyectbiblioteca/ui/auth/loginf.dart';
import 'package:proyectbiblioteca/ui/contenido/inicio.dart';
import 'package:proyectbiblioteca/ui/contenido/login.dart';
import 'package:proyectbiblioteca/ui/contenido/loginestudiante.dart';
import 'package:proyectbiblioteca/ui/contenido/panelinicioadmin.dart';
import 'package:proyectbiblioteca/ui/contenido/panelinicioestudiante.dart';
import 'package:proyectbiblioteca/ui/contenido/registroadmin.dart';
import 'package:proyectbiblioteca/ui/contenido/registroestudiante.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Inicio',
      debugShowCheckedModeBanner: false,
      routes: {
        '/Inicio': (context) => const Inicio(),
        '/login': (context) => const Login(),
        '/panelAdministrador': (context) => const PanelInicio(),
        '/loginF': (context) => const LoginF(),
        '/loginEstudiante': (context) => const LoginEstudiante(),
        '/panelEstudiante': (context) => const PanelInicioEstudiante(),
        '/registrarSecretaria': (context) => const RegistrarAdmin(),
        '/registrarEstudiante': (context) => const RegistroEstudiante(),
      },
      home: const Inicio(),
    );
  }
}
