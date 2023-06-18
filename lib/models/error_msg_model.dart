// To parse this JSON data, do
//
//     final errorMsg = errorMsgFromJson(jsonString);

import 'dart:convert';

ErrorMsg errorMsgFromJson(String str) => ErrorMsg.fromJson(json.decode(str));

String errorMsgToJson(ErrorMsg data) => json.encode(data.toJson());

class ErrorMsg {
    String message;
    String? username;
    Errors errors;

    ErrorMsg({
        required this.message,
        this.username,
        required this.errors,
    });

    factory ErrorMsg.fromJson(Map<String, dynamic> json) => ErrorMsg(
        message: json["message"],
        username: json["username"] ?? "" ,
        errors: Errors.fromJson(json["errors"]),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "username": username,
        "errors": errors.toJson(),
    };
}

class Errors {
    List<String> name;
    List<String> email;
    List<String> password;
    List<String> registro;
    List<String> numeroTelefono;
    List<String> foto;
    List<String> fotoHorario;

    Errors({
        required this.name,
        required this.email,
        required this.password,
        required this.registro,
        required this.numeroTelefono,
        required this.foto,
        required this.fotoHorario,
    });

    factory Errors.fromJson(Map<String, dynamic> json) => Errors(
        name: List<String>.from(json["name"].map((x) => x)),
        email: List<String>.from(json["email"].map((x) => x)),
        password: List<String>.from(json["password"].map((x) => x)),
        registro: List<String>.from(json["registro"].map((x) => x)),
        numeroTelefono: List<String>.from(json["numero_telefono"].map((x) => x)),
        foto: List<String>.from(json["foto"].map((x) => x)),
        fotoHorario: List<String>.from(json["foto_horario"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "name": List<dynamic>.from(name.map((x) => x)),
        "email": List<dynamic>.from(email.map((x) => x)),
        "password": List<dynamic>.from(password.map((x) => x)),
        "registro": List<dynamic>.from(registro.map((x) => x)),
        "numero_telefono": List<dynamic>.from(numeroTelefono.map((x) => x)),
        "foto": List<dynamic>.from(foto.map((x) => x)),
        "foto_horario": List<dynamic>.from(fotoHorario.map((x) => x)),
    };
}