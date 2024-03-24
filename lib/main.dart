import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:training_flutter/blocs/auth/auth_cubit.dart';
import 'package:training_flutter/blocs/post/create_post/create_post_cubit.dart';
import 'package:training_flutter/blocs/post/delete_post/delete_post_cubit.dart';
import 'package:training_flutter/blocs/post/get_post/post_cubit.dart';
import 'package:training_flutter/blocs/post/update_post/update_post_cubit.dart';
import 'package:training_flutter/core/init_core.dart';

import 'package:training_flutter/ui/auth/pages/login_page.dart';
import 'package:training_flutter/ui/auth/pages/register_page.dart';
import 'package:training_flutter/ui/posts/posts_page.dart';
import 'package:training_flutter/ui/splash/splash_page.dart';

import 'core/routes/app_path.dart';

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
    return  MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => AuthCubit()),
          BlocProvider(create: (context) => PostCubit()),
          BlocProvider(create: (context) => CreatePostCubit()),
          BlocProvider(create: (context) => UpdatePostCubit()),
          BlocProvider(create: (context) => DeletePostCubit()),
        ],
      child: MaterialApp(
          initialRoute: '/',
          title: 'Training App',
          debugShowCheckedModeBanner: false,
          routes: {
            '/': (context) => const SplashPage(),
            AppPath.login:(context) => LoginPage(),
            AppPath.register: (context) => RegisterPage(),
            AppPath.posts: (context) => PostsPage()
          },
        ),
    );
  }
}

