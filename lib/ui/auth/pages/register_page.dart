import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_flutter/core/enum/api_status.dart';
import 'package:training_flutter/providers/auth_provider.dart';


class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key});

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
        padding: const EdgeInsets.all(8.0),
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
              Consumer<AuthProvider>(builder: (context, authProvider, _) {
                return ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      authProvider.register(
                        context,
                        name: _nameController.text,
                        email: _emailController.text,
                        password: _passwordController.text,
                      );
                    }
                  },
                  child: authProvider.registerStatus.isLoading
                      ? const CircularProgressIndicator()
                      : const Text('Register'),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}