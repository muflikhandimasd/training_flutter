import 'package:dio/dio.dart';

const timeout = Duration(minutes: 1);
final dio = Dio(BaseOptions(
  baseUrl: '<BASE_URL>',
  receiveTimeout: timeout,
  connectTimeout: timeout,
  sendTimeout: timeout,
));

