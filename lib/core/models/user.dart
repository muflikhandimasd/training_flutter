import 'package:training_flutter/core/helpers/cek_json.dart';

class User {
  final int id;
  final String name;
  final String email;

 const User({
    required this.id,
    required this.name,
    required this.email,
  });

  factory User.fromJson(Map<String, dynamic> json) {

    return User(
      id: cekJson(json, 'id') ?? 0,
      name: cekJson(json, 'name') ?? '',
      email: cekJson(json, 'email') ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
    };
  }


  @override
  String toString() => 'User(id: $id, name: $name, email: $email)';
  
}