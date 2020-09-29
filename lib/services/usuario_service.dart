import 'package:flutter/material.dart';
import 'package:estados/models/usuario.dart';

class UsuarioService with ChangeNotifier{
  
  Usuario _usuario;

  Usuario get usuario => this._usuario;
  bool get existeUsuario => this._usuario != null;

  set usuario(Usuario usuario){
    this._usuario = usuario;
    notifyListeners();
  }

  void cambiarEdad( int edad ){
    this._usuario.edad = edad;
    notifyListeners();
  }

  void removerUsuario(){
    this._usuario = null;
    notifyListeners();
  }

  void agregarProfesion(){
    this._usuario.profesiones.add('Profesion ${this.usuario.profesiones.length + 1 }');
    notifyListeners();
  }

}