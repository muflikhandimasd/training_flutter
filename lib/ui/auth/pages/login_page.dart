import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_flutter/blocs/auth/auth_cubit.dart';
import 'package:training_flutter/core/enum/api_status.dart';
import 'package:training_flutter/core/routes/app_path.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email tidak valid';
                    }

                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
                ),
                TextFormField(
                  controller: _passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password tidak valid';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: 'Password',
                  ),
                ),
                BlocBuilder<AuthCubit, AuthState>(
                  builder: (context, state) {
                    return ElevatedButton(
                      onPressed: () {
                        if (state.loginStatus.isLoading) return;
                        if (_formKey.currentState!.validate()) {
                          context.read<AuthCubit>().login(
                                email: _emailController.text,
                                password: _passwordController.text,
                              );
                        }
                      },
                      child: state.loginStatus.isLoading
                          ? const CircularProgressIndicator()
                          : const Text('Login'),
                    );
                  },
                ),
                TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, AppPath.register);
                },
                child: const Text('Belum punya akun? Register disini'),
              ),
              ],
            )),
      ),
    );
  }
}
