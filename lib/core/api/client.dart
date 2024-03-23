import 'package:dio/dio.dart';

const timeout = Duration(minutes: 1);
final dio = Dio(BaseOptions(
  receiveTimeout: timeout,
  connectTimeout: timeout,
  sendTimeout: timeout,
));

