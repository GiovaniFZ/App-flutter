import 'package:flutter/material.dart';
import 'package:flutter_app/pages/login.dart';
import 'package:flutter_app/pages/second.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
      home: Login(),
      routes: {
        '/login': (context) => Login(),
        '/second': (context) => Second(),
      },
    );
  }
}
