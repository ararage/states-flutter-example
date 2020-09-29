import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:estados/services/usuario_service.dart';
import 'package:estados/models/usuario.dart';

class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final usuarioService = Provider.of<UsuarioService>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title: usuarioService.existeUsuario ? Text('${usuarioService.usuario.nombre}') : Text('Pagina 2')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: Text('Establecer Usuario', style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: (){
                final newUser = Usuario(nombre: 'Ricardo Pérez', edad: 26, profesiones: ['Developer', 'Clolud']);
                usuarioService.usuario = newUser;
              },
            ),
            MaterialButton(
              child: Text('Cambiar edad', style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: (){
                if(usuarioService.existeUsuario)
                  usuarioService.cambiarEdad(27);
              },
            ),
            MaterialButton(
              child: Text('Añadir Profesion', style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: (){ 
                if(usuarioService.existeUsuario) 
                  usuarioService.agregarProfesion();
              }
            )
          ],
        ),
     ),
   );
  }
}