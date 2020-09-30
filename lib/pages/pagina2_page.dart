import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:estados/bloc/usuario/usuario_cubit.dart';
import 'package:estados/models/usuario.dart';

class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final usuarioCubit = context.bloc<UsuarioCubit>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 2')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: Text('Establecer Usuario', style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: (){
                final newUser = new Usuario(
                  nombre: 'Ricardo Pérez',
                  edad: 26,
                  profesiones: [
                    'Flutter',
                    'Django'
                  ]
                );
                usuarioCubit.seleccionarUsuario(newUser);
              },
            ),
            MaterialButton(
              child: Text('Cambiar edad', style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: (){
                usuarioCubit.cambiarEdad(30);
              },
            ),
            MaterialButton(
              child: Text('Añadir Profesion', style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: (){
                usuarioCubit.agregarProfesion();
              },
            )
          ],
        ),
     ),
   );
  }
}