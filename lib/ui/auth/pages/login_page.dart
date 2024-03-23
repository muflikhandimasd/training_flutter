import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_flutter/core/enum/api_status.dart';
import 'package:training_flutter/providers/auth_provider.dart';

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
      body:Padding(
        padding: const EdgeInsets.all(8.0),
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
           Consumer<AuthProvider>(builder: (context, authProvider, _) {
              return ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    authProvider.login(
                      context,
                      email: _emailController.text,
                      password: _passwordController.text,
                    );
                  }
                },
                child: authProvider.isLoggedInStatus.isLoading? const Center(child: CircularProgressIndicator(),) : const Text('Login'),
              );
            }),
          ],
        )),
      ),
    );
  }
}
