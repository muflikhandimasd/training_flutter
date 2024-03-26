import 'package:dio/dio.dart';

const timeout = Duration(minutes: 1);
final dio = Dio(BaseOptions(
  baseUrl: 'http://192.168.1.65:9002/api',
  receiveTimeout: timeout,
  connectTimeout: timeout,
  sendTimeout: timeout,
));

