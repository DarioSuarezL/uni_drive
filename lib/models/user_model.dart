// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
    int id;
    String name;
    String email;
    dynamic emailVerifiedAt;
    String registro;
    int numeroTelefono;
    String foto;
    String fotoHorario;
    DateTime createdAt;
    DateTime updatedAt;

    User({
        required this.id,
        required this.name,
        required this.email,
        this.emailVerifiedAt,
        required this.registro,
        required this.numeroTelefono,
        required this.foto,
        required this.fotoHorario,
        required this.createdAt,
        required this.updatedAt,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        emailVerifiedAt: json["email_verified_at"],
        registro: json["registro"],
        numeroTelefono: json["numero_telefono"],
        foto: json["foto"],
        fotoHorario: json["foto_horario"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "email_verified_at": emailVerifiedAt,
        "registro": registro,
        "numero_telefono": numeroTelefono,
        "foto": foto,
        "foto_horario": fotoHorario,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}