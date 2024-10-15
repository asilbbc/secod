// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.deepPurple[300],
      child: Column(
        children: [
          DrawerHeader(
            child: Icon(
              Icons.favorite,
              size: 48,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              size: 24,
            ),
            title: Text('Home'),
            onTap: () {
              Navigator.pushNamed(context, '/homePage');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.logout,
              size: 24,
            ),
            title: Text('Logout'),
            onTap: () {
              Navigator.pushNamed(context, '/loginPage');
            },
          ),
        ],
      ),
    );
  }
}