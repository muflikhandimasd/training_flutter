import 'package:dio/dio.dart';
import 'package:training_flutter/core/api/client.dart';
import 'package:training_flutter/core/local/storage.dart';

Future<void> initCore()async{
  dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (options, handler)async {
      // Do something before request is sent
      final token = await storage.read(key: 'token');
      if(token != null){
        options.headers['Authorization'] = 'Bearer $token';
      }
      return handler.next(options); //continue
    },
    onResponse: (response, handler) {
      // Do something with response data
      
      return handler.next(response); // continue
    },
    onError: (error, handler) {
      // Do something with response error
      return handler.next(error); //continue
    },
  ));
}