import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';
import 'package:training_flutter/blocs/auth/auth_cubit.dart';
import 'package:training_flutter/core/enum/api_status.dart';
import 'package:training_flutter/core/routes/app_path.dart';
import 'package:training_flutter/gen/assets.gen.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listenWhen: (previous, current) => previous.isLoggedInStatus != current.isLoggedInStatus,
      listener: (context, state) {
        if (state.isLoggedInStatus.isError) {
          FlutterNativeSplash.remove();
            Navigator.pushNamedAndRemoveUntil(context, AppPath.login, (route) => false);
        }
        if (state.isLoggedInStatus.isSuccess) {
          FlutterNativeSplash.remove();

          Navigator.pushNamedAndRemoveUntil(context, AppPath.posts, (route) => false);
        }
        
        
      },
      child: Scaffold(
        backgroundColor:Colors.white,
        body:  Center(
          child: Assets.icons.logo.image(),
        ),
      ),
    );
  }
}
