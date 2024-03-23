import 'package:dio/dio.dart';
import 'package:training_flutter/core/api/client.dart';

abstract class AuthService {
 static Future login({
    required String email,
    required String password,
  })async{
    final response = await dio.post(
      '/login',
      data:FormData.fromMap({
        'email': email,
        'password': password,}),
    );
    return response.data;

  }

 static Future register({
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
    return response.data;
  }

static  Future logout()async{
    final response = await dio.post('/logout');
    return response.data;
  }
}