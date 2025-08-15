import 'package:flutter/material.dart';
import 'package:flutter_app/components/custom_button.dart';
import 'package:flutter_app/components/custom_input.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBar(
            backgroundColor: Color(0xFF03378F),
            iconTheme: IconThemeData(color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.all(50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Create new Account',
                    style: TextStyle(fontSize: 48, fontWeight: FontWeight.w900),
                    textAlign: TextAlign.center,
                  ),
                ),
                Center(
                  child: Text(
                    'Already Registered? Log in here.',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
                CustomInput(label: 'NAME'),
                CustomInput(label: 'EMAIL', type: TextInputType.emailAddress),
                CustomInput(label: 'PASSWORD', obscureText: true),
                CustomInput(
                  label: 'DATE OF BIRTH',
                  type: TextInputType.datetime,
                ),
                CustomButton(onPressed: () {}, text: 'Sign up'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
