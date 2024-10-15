import 'package:flutter/material.dart';
import 'package:secod/pages/login.dart';
import 'package:secod/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      title: 'Flutter Time',
      routes: {
        '/loginPage': (context) => LoginPage(),
        '/homePage': (context) => const HomePage(),
      },
    );
  }
}
