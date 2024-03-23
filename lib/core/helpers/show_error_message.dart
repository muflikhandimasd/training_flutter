import 'package:flutter/material.dart';

void showErrorMessage(BuildContext context, String message){
  ScaffoldMessenger.of(context)..hideCurrentSnackBar()..showSnackBar(
    SnackBar(
      content: Text(message),
      backgroundColor: Colors.red,
    ),
  );
}