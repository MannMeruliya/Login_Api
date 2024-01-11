import 'package:auth_login_api/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () async {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          prefs.setString('token', '');
          navigatorKey.currentState?.pushReplacementNamed('loginpage');
        }, icon: const Icon(Icons.check),),
        title: const Text("HomePage"),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Hello",style: TextStyle(fontSize: 30,color: Colors.white),))
        ],
      ),
    );
  }
}
