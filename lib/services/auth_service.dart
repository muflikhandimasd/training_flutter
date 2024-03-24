import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:training_flutter/core/api/client.dart';
import 'package:training_flutter/core/local/storage.dart';
import 'package:training_flutter/core/models/user.dart';

abstract class AuthService {

  static Future<User?> getLoggedInUser() async {
    final userString = await storage.read(key: 'user');
    if (userString != null) {
      return User.fromJson(jsonDecode(userString));
    }
    return null;
  }
 static Future<User> login({
    required String email,
    required String password,
  })async{
    final response = await dio.post(
      '/login',
      data:FormData.fromMap({
        'email': email,
        'password': password,}),
    );
    final responseData = response.data['data'];

    final user = User.fromJson(responseData['user']);

    await Future.wait([
      storage.write(key: 'user', value :jsonEncode(user.toJson())),
      storage.write(key: 'token', value: responseData['access_token']),
    ]);
    return user;

  }

 static Future<User> register({
    required String email,
    required String password,
    required String name,
  })async{
    final response = await dio.post(
      '/register',
      data:FormData.fromMap({
        'email': email,
        'password': password,
        'name': name,
      }),
    );
     final responseData = response.data['data'];

    final user = User.fromJson(responseData['user']);

    await Future.wait([
      storage.write(key: 'user', value :jsonEncode(user.toJson())),
      storage.write(key: 'token', value: responseData['access_token']),
    ]);
    return user;
  }

static  Future<String> logout()async{
    final response = await dio.post('/logout');
    await Future.wait([
      storage.delete(key: 'user'),
      storage.delete(key: 'token'),
    ]);
    return response.data['message'];
  }
}