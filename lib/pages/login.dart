import 'package:flutter/material.dart';
import 'package:flutter_app/components/avatar.dart';
import 'package:flutter_app/components/button_text.dart';
import 'package:flutter_app/components/custom_button.dart';
import 'package:flutter_app/components/custom_input.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Avatar(),
          Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                  ),
                ),
                Center(
                  child: Text(
                    'Sign in to continue',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ),
                CustomInput(label: 'NAME'),
                CustomInput(label: 'PASSWORD', obscureText: true),
                CustomButton(onPressed: () {}, text: 'Log in'),
                ButtonText(text: 'Forgot Password?', onPressed: () {}),
                ButtonText(
                  text: 'Sign Up!',
                  onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
