import 'dart:io';

Future<bool> isInternetAvailable()async{
  bool result = false;
  try {
    final available = await InternetAddress.lookup('example.com');
    if (available.isNotEmpty && available[0].rawAddress.isNotEmpty) {
      result = true;
    }
  } on SocketException catch (_) {
    result = false;
  }
  return result;
}