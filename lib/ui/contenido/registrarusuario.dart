import 'package:flutter/material.dart';
import 'package:proyectbiblioteca/domain/modelos/usuario.dart';
import 'package:proyectbiblioteca/ui/contenido/widget.dart';

class RegistrarUsuario extends StatefulWidget {
  const RegistrarUsuario({super.key});

  @override
  State<RegistrarUsuario> createState() => _AdicionarUsuarioState();
}

class _AdicionarUsuarioState extends State<RegistrarUsuario> {
  List<Usuario> _clienteAdd = [];
  TextEditingController controlnombre = TextEditingController();
  TextEditingController controlapellido = TextEditingController();
  TextEditingController controltipodeusuario = TextEditingController();
  TextEditingController controlcorreo = TextEditingController();
  TextEditingController controlpassword = TextEditingController();

  @override
  void initState() {
    // controlnombre.text = widget.gestioncliente.nombre;
    // controlapellido.text = widget.gestioncliente.apellido;
    // controltipodeusuario.text = widget.gestioncliente.controltipodeusuario;
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
            controlartextos: controlnombre,
            etiqueta: 'Nombres',
          ),
          Textos(
            controlartextos: controlapellido,
            etiqueta: 'Apellidos',
          ),
          Textos(
            controlartextos: controltipodeusuario,
            etiqueta: 'Tipo de usuario',
          ),
          Textos(
            controlartextos: controlcorreo,
            etiqueta: 'Correo',
          ),
          Textos(
            controlartextos: controlpassword,
            etiqueta: 'Contraseña',
          ),
          ElevatedButton(
            //Boton de Enviar Datos
            onPressed: () {
              if (controlnombre.text.isNotEmpty &&
                  controlapellido.text.isNotEmpty &&
                  controltipodeusuario.text.isNotEmpty &&
                  controlcorreo.text.isNotEmpty &&
                  controlpassword.text.isNotEmpty) {
                _clienteAdd.add(Usuario(
                    nombre: controlnombre.text,
                    apellido: controlapellido.text,
                    tipoDeUsuario: controltipodeusuario.text,
                    correo: controlcorreo.text,
                    contrasena: controlpassword.text));

                // Devuelvo los datos

                Navigator.pop(context, _clienteAdd);
              }
            },
            child: const Text('Guardar Datos'),
          ),
        ],
      ),
    );
  }
}
