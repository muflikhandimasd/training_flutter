import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';
import 'package:training_flutter/core/init_core.dart';
import 'package:training_flutter/providers/auth_provider.dart';

Future<void> main() async{
 final widgetsBinding= WidgetsFlutterBinding.ensureInitialized();
 FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
 await initCore();
  runApp(const App());
}


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(create: (_) => AuthProvider()..checkIsLoggedIn()),
      ],
      child: MaterialApp.router(
        
      ));
  }
}
