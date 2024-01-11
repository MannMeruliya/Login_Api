import 'package:auth_login_api/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'auth_provider.dart';
import 'login_page.dart';

void main()
{
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => AuthProvider()),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      navigatorKey: navigatorKey,
      routes: {
        '/': (context) => LoginPage(),
        'homepage': (context) => HomePage(),
      },
    ),
  ));
}
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();