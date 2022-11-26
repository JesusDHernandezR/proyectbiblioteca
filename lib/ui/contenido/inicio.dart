import 'package:flutter/material.dart';
import 'package:proyectbiblioteca/ui/auth/loginf.dart';
import 'package:proyectbiblioteca/ui/contenido/login.dart';
import 'package:proyectbiblioteca/ui/contenido/loginestudiante.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inicio',
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://c7.alamy.com/compes/2e5eg9y/diseno-de-estanterias-de-colores-para-libreria-ereader-biblioteca-simbolo-de-la-aplicacion-o-casa-decoracion-cartel-imprimir-abstracto-vector-ilustracion-2e5eg9y.jpg'),
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 500.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginEstudiante(),
                        ));
                  },
                  child: const Text('Estudiante'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 500.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Login(),
                          ));
                    },
                    child: const Text('Secretaria')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
