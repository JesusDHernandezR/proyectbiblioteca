import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyectbiblioteca/domain/controller/controlusuariof.dart';
import 'package:proyectbiblioteca/ui/contenido/consultarlibro.dart';
import 'package:proyectbiblioteca/ui/contenido/inicio.dart';
import 'package:proyectbiblioteca/ui/contenido/librodeseo.dart';
import 'package:proyectbiblioteca/ui/contenido/libros/listarlibro.dart';
import 'package:proyectbiblioteca/ui/contenido/librosprestados.dart';

class PanelInicioEstudiante extends StatefulWidget {
  const PanelInicioEstudiante({super.key});

  @override
  State<PanelInicioEstudiante> createState() => _PanelInicioEstudiante();
}

class _PanelInicioEstudiante extends State<PanelInicioEstudiante> {
  @override
  Widget build(BuildContext context) {
    ControlAuthFirebase control = Get.find();
    return MaterialApp(
      title: 'Estudiante',
      home: Scaffold(
        drawer: Drawer(
          //Listadelibros, listalibrosprestados y listadelibrosdeseo
          child: Container(
            color: const Color.fromARGB(255, 228, 172, 87),
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.only(top: 50, bottom: 20),
                  child: Image.network(
                      'https://cdn.icon-icons.com/icons2/1860/PNG/512/student3_118006.png'),
                ),
                Text(
                  'Usuario: ${control.emailf}',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, height: 2, fontSize: 15),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  color: Colors.transparent,
                  child: ElevatedButton(
                    style: ButtonStyle(),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) =>
                                  const PanelInicioEstudiante())));
                    },
                    child: const Text('Inicio'),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 1),
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  color: Colors.transparent,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const ListarLibro())));
                    },
                    child: const Text('Libros'),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 1),
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  color: Colors.transparent,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const ListarLibro())));
                    },
                    child: const Text('Prestados'),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 1),
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  color: Colors.transparent,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const Deseo())));
                    },
                    child: const Text('Deseo'),
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  margin: const EdgeInsets.only(top: 1),
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  color: Colors.black87,
                  alignment: Alignment.center,
                  child: const Text(
                    'Cerrar sesión',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 234, 186, 123),
          title: const Text('Estudiante'),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Inicio(),
                      ));
                },
                icon: const Icon(Icons.exit_to_app_outlined))
          ],
        ),
        body: const Center(
          child: Text(''),
        ),
      ),
      // appBar: AppBar(
      //   title: const Text('Estudiante'),
      //   actions: [
      //     IconButton(
      //         onPressed: () {
      //           Navigator.push(
      //               context,
      //               MaterialPageRoute(
      //                   builder: ((context) => const LoginEstudiante())));
      //         },
      //         icon: const Icon(Icons.exit_to_app))
      //   ],
      // ),

      // body: Drawer(
      //   child: ListView(children: <Widget>[
      //     Ink(
      //       color: Colors.indigo,
      //     ),
      //     ElevatedButton(
      //         onPressed: () {},
      //         child: const ListTile(
      //           title: Text('Solicitar Libros'),
      //         )),
      //     ElevatedButton(
      //         onPressed: () {},
      //         child: const ListTile(
      //           title: Text('Consultar prestamos'),
      //         )),
      //     ElevatedButton(
      //         onPressed: () {
      //           Navigator.push(
      //               context,
      //               MaterialPageRoute(
      //                 builder: (context) => const Deseo(),
      //               ));
      //         },
      //         child: const ListTile(
      //           title: Text('Deseo'),
      //         )),
      //   ]),
      // ),
    );
  }
}
