import 'package:flutter/material.dart';
import 'package:proyectbiblioteca/domain/modelos/estudiante.dart';
import 'package:proyectbiblioteca/ui/contenido/widget.dart';

class RegistroEstudiante extends StatefulWidget {
  const RegistroEstudiante({super.key});

  @override
  State<RegistroEstudiante> createState() => _AdicionarEstudianteState();
}

class _AdicionarEstudianteState extends State<RegistroEstudiante> {
  List<Estudiante> _clienteAdd = [];
  TextEditingController controlidentificacion = TextEditingController();
  TextEditingController controlnombre = TextEditingController();
  TextEditingController controlapellido = TextEditingController();
  TextEditingController controlcorreo = TextEditingController();
  TextEditingController controlcontrasena = TextEditingController();

  @override
  void initState() {
    // controlnombre.text = widget.gestioncliente.nombre;
    // controlapellido.text = widget.gestioncliente.apellido;
    // controlcorreo.text = widget.gestioncliente.correo;
    // controlpassword.text = widget.gestioncliente.contrasena;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Registrar')),
      body: Column(
        children: [
          Textos(
            controlartextos: controlidentificacion,
            etiqueta: 'Identificacion',
          ),
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
            //Boton de Enviar Datos
            onPressed: () {
              if (controlnombre.text.isNotEmpty &&
                  controlapellido.text.isNotEmpty &&
                  controlcorreo.text.isNotEmpty &&
                  controlcontrasena.text.isNotEmpty) {
                _clienteAdd.add(Estudiante(
                    identificacion: controlidentificacion.text,
                    nombre: controlnombre.text,
                    apellido: controlapellido.text,
                    correo: controlcorreo.text,
                    contrasena: controlcontrasena.text));

                // Devuelvo los datos

                Navigator.pop(context, _clienteAdd);
              }
            },
            child: const Text('Guardar'),
          ),
        ],
      ),
    );
  }
}
