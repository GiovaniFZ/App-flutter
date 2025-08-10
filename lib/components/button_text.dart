import 'package:flutter/material.dart';

class ButtonText extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color textColor;

  const ButtonText({
    super.key,
    required this.text,
    required this.onPressed,
    this.textColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
