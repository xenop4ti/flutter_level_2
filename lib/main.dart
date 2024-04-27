import 'package:flutter/material.dart';
import './pages/register.dart';
import './welcome.dart';
import './pages/homepage.dart';
import './pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      initialRoute: '/homepage',
      routes: {
        HomePage.routeName: (context) => HomePage(),
        Login.routeName: (context) => Login(),
        WelcomePage.routeName: (context) => WelcomePage(),
        Register.routeName: (context) => Register(),
      },
    );
  }
}
