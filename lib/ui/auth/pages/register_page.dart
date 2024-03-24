import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:training_flutter/blocs/auth/auth_cubit.dart';
import 'package:training_flutter/core/enum/api_status.dart';
import 'package:training_flutter/core/routes/app_path.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nama tidak valid';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: 'Nama',
                ),
              ),
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
                      if (state
                          .registerStatus
                          .isLoading) return;
                      if (_formKey.currentState!.validate()) {
                        context.read<AuthCubit>().register(
                              name: _nameController.text,
                              email: _emailController.text,
                              password: _passwordController.text,
                            );
                      }
                    },
                    child:   state
                            .registerStatus
                            .isLoading
                        ? const CircularProgressIndicator()
                        : const Text('Register'),
                  );
                },
              ),

              // ALREADY HAVE AN ACCOUNT
              TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, AppPath.login);
                },
                child: const Text('Sudah punya akun? Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
