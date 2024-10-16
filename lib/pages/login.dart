import 'package:flutter/material.dart';
import 'package:secod/components/button.dart';
import 'package:secod/components/text_fields.dart';
import 'dart:developer';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text edit controller
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  //on Button Tap
  void signUserIn() {
    if (userNameController.text.isNotEmpty &&
        passwordController.text.isNotEmpty) {
      log('userName: ${userNameController.text}');
      log('password: ${passwordController.text}');
      log('${userNameController.text}.${passwordController.text}');
    } else {
      log('fill in the required inputs');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              const Icon(Icons.lock, size: 100),
              const SizedBox(height: 50),
              Text(
                'Welcome Back',
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
              ),
              const SizedBox(height: 25),
              //username
              MyTextFields(
                controller: userNameController,
                hintText: 'User Name',
                obscureText: false,
              ),
              const SizedBox(height: 10),
              //password
              MyTextFields(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              MyButton(
                onTap: signUserIn,
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.all(25),
                child: ElevatedButton(
                  onPressed: () {
                    if (userNameController.text == 'admin' &&
                        passwordController.text == 'root') {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/homePage');
                    } else {
                      log('wrong username or password');
                    }
                  },
                  child: const Text('Click Me'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
