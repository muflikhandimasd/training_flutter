import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:training_flutter/core/enum/api_status.dart';
import 'package:training_flutter/core/helpers/get_error_message.dart';
import 'package:training_flutter/core/helpers/is_internet_available.dart';
import 'package:training_flutter/core/helpers/show_error_message.dart';
import 'package:training_flutter/core/local/storage.dart';
import 'package:training_flutter/core/models/user.dart';
import 'package:training_flutter/services/auth_service.dart';

class AuthProvider with ChangeNotifier {
  var _loginStatus = ApiStatus.initial;
  ApiStatus get loginStatus => _loginStatus;

 var _registerStatus = ApiStatus.initial;
  ApiStatus get registerStatus => _registerStatus;
 var _logoutStatus = ApiStatus.initial;
  ApiStatus get logoutStatus => _logoutStatus;
 var _isLoggedInStatus = ApiStatus.initial;
  ApiStatus get isLoggedInStatus => _isLoggedInStatus;

  User? _user;
  User? get user => _user;

  void checkIsLoggedIn()async{
    final token = await storage.read(key: 'token');
    final user = await storage.read(key: 'user');

    if(token != null && user != null){
      _user = User.fromJson(jsonDecode(user));
      _isLoggedInStatus = ApiStatus.success;
    }else{
      _isLoggedInStatus = ApiStatus.error;
    }

    notifyListeners();
  }



  void login(BuildContext context, {
    required String email,
    required String password,
  })async{
    if (await isInternetAvailable()) {
      try {
        final response = await AuthService.login(
          email: email,
          password: password,
        );
        final token = response['access_token'];
        final user = response['user'];
        await Future.wait([
          storage.write(key: 'token', value: token),
          storage.write(key: 'user', value: jsonEncode(user)),
        ]);
        _loginStatus = ApiStatus.success;
      } on DioException catch (e) {
        _loginStatus = ApiStatus.error;
        if(!context.mounted) return;
        showErrorMessage(context, getErrorMessage(e));
      }
    }else{
    if(!context.mounted) return;
      showErrorMessage(context, 'No internet connection');
      _loginStatus = ApiStatus.error;
    }
    notifyListeners();
  }

  void register(BuildContext context, {
    required String email,
    required String password,
    required String name,
  })async{
    if (await isInternetAvailable()) {
      try {
        final response = await AuthService.register(
          email: email,
          password: password,
          name: name,
        );
        final token = response['access_token'];
        final user = response['user'];
        await Future.wait([
          storage.write(key: 'token', value: token),
          storage.write(key: 'user', value: jsonEncode(user)),
        ]);
        _registerStatus = ApiStatus.success;
      } on DioException catch (e) {
        _registerStatus = ApiStatus.error;
        if(!context.mounted) return;
        showErrorMessage(context, getErrorMessage(e));
      }
    }else{
    if(!context.mounted) return;
      showErrorMessage(context, 'No internet connection');
      _registerStatus = ApiStatus.error;
    }
    notifyListeners();
  }

  void logout(BuildContext context)async{
    if (await isInternetAvailable()) {
      try {
        await Future.wait([
          AuthService.logout(),
          storage.delete(key: 'token'),
          storage.delete(key: 'user'),
        ]);
       
        _logoutStatus = ApiStatus.success;
      } on DioException catch (e) {
        _logoutStatus = ApiStatus.error;
        if(!context.mounted) return;
        showErrorMessage(context, getErrorMessage(e));
      }
    }else{
    if(!context.mounted) return;
      showErrorMessage(context, 'No internet connection');
      _logoutStatus = ApiStatus.error;
    }
    notifyListeners();
  }


  
}