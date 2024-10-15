// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:secod/components/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/loginPage');
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      drawer: MyDrawer(),
      backgroundColor: const Color.fromARGB(255, 237, 183, 210),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('hey')
          ],
        ),
      ),
    );
  }
}
