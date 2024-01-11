import 'package:flutter/material.dart';
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
        }, icon: Icon(Icons.check),),
        title: Text("HomePage"),
      ),
    );
  }
}
