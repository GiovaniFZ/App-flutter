import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Example', style: TextStyle(color: Colors.white)),
          elevation: 1,
          backgroundColor: Color(0xFF03378F),
          leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.settings, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(width: 1000, height: 300, color: Colors.deepOrange[200]),
            Container(width: 300, height: 300, color: Colors.deepOrange[300]),
            Container(width: 300, height: 300, color: Colors.blue[100]),
          ],
        ),
      ),
    );
  }
}
