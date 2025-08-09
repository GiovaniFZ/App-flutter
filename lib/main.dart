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
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          itemCount: 12,
          itemBuilder: (context, index) {
            return Card(child: Center(child: Text('Item $index')));
          },
        ),
      ),
    );
  }
}
