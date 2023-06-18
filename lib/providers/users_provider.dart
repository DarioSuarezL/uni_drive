
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:uni_drive/models/user_model.dart';
import 'package:uni_drive/services/users_services.dart';

class UsersProvider with ChangeNotifier{
  User? user;

  Future<User> loginUser(String registro, String password) async{
    UsersServices service = UsersServices();
    user = await service.getUser(registro, password);
    notifyListeners();
    return user!;
  }

  

  Future<User> registerUser(
    String name,
    String email,
    String password,
    String registro,
    String numero_telefono,
    String foto,
    String foto_horario
  )async{
    UsersServices service = UsersServices();
    user = await service.postUser(
      name,
      email,
      password,
      registro,
      numero_telefono,
      foto,
      foto_horario
    );
    notifyListeners();
    return user!;
  }



  
}