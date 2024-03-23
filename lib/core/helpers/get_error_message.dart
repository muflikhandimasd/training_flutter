import 'package:dio/dio.dart';

String getErrorMessage(DioException e){
  var message = 'Terjadi kesalahan';

  switch (e.type) {
    case DioExceptionType.connectionTimeout:
      message = 'Koneksi terputus';
      break;
    case DioExceptionType.receiveTimeout:
      message = 'Koneksi terputus';
      break;
    case DioExceptionType.sendTimeout:
      message = 'Koneksi terputus';
      break;
    case DioExceptionType.badResponse:
      message = 'Terjadi kesalahan pada server';
      break;
    case DioExceptionType.cancel:
      message = 'Permintaan dibatalkan';
      break;

      case DioExceptionType.badCertificate:
      message = 'Sertifikat tidak valid';
      break;

      case DioExceptionType.connectionError:
      message = 'Terjadi kesalahan koneksi';
      break;


    case DioExceptionType.unknown:
      message = 'Terjadi kesalahan';
      break;
  }

  final response = e.response;
  if (response != null) {
    final data = response.data;
    if (data is Map) {
      message = data['message'] ?? message;
    }
  }



  return message;
}