import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'auth_provider.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider >(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                label: Text("eve.holt@reqres.in"),
                hintText: 'Email',
              ),
            ),
            const SizedBox(height: 20,),
            TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                  label: Text("cityslicka"),
                  hintText: 'password'
              ),
            ),
            const SizedBox(height: 40,),
            GestureDetector(
              onTap: () {
                authProvider.login(emailController.text.toString(),passwordController.text.toString());
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Center(
                  child: authProvider.loading ? const CircularProgressIndicator(): const Text('Login'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}