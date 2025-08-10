import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String label;
  final Color color;
  final Color textColor;

  const CustomInput({
    super.key,
    required this.label,
    this.color = const Color(0x00D5D4D4),
    this.textColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(alignment: Alignment.centerLeft, child: Text(label)),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            filled: true,
            fillColor: color,
            labelStyle: TextStyle(color: textColor),
          ),
        ),
      ],
    );
  }
}
