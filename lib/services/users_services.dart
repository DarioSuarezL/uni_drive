import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:uni_drive/global/system_env.dart';
import 'package:uni_drive/models/api_response.dart';
import 'package:uni_drive/models/error_msg_model.dart';
import 'package:uni_drive/models/user_model.dart';

class UsersServices{

  Future<User> getUser(String registro, String password) async{
    final uri = Uri.parse('${SystemEnv.apiURL}/user/login');
    
    final response = await http.post(uri, 
    body: {
      'registro': registro,
      'password': password
    });

    User user;
    
    if(response.statusCode == 200){
      final decoded = await json.decode(response.body);
      user = User.fromJson(decoded);

    }else{
      user = User(
        id: -1,
        name: '',
        email: '',
        emailVerifiedAt: '',
        registro: '',
        numeroTelefono: 0,
        foto: '',
        fotoHorario: '',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now()
      );
    }
    return user;
  }



  Future<User> postUser(
    String name,
    String email,
    String password,
    String registro,
    String numero_telefono,
    String foto,
    String foto_horario
  ) async{
    final uri = Uri.parse('${SystemEnv.apiURL}/user/register');
    
    final response = await http.post(uri, 
    body: {
      'name': name,
      'email': email,
      'password': password,
      'registro': registro,
      'numero_telefono': numero_telefono,
      'foto': foto,
      'foto_horario': foto_horario
    });

    User user;
    
    if(response.statusCode == 200){
      final decoded = await json.decode(response.body);
      user = User.fromJson(decoded);

    }else{
      user = User(
        id: -1,
        name: '',
        email: '',
        emailVerifiedAt: '',
        registro: '',
        numeroTelefono: 0,
        foto: '',
        fotoHorario: '',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now()
      );
    }
    return user;
  }

}