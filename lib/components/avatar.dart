import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF03378F),
      height: 200,
      child: Center(
        child: CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage(
            'https://avatars.githubusercontent.com/u/90426410?v=4',
          ),
        ),
      ),
    );
  }
}
