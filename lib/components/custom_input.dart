import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String label;
  final Color color;
  final Color textColor;
  final TextInputType type;
  final bool obscureText;

  const CustomInput({
    super.key,
    required this.label,
    this.color = const Color(0x00D5D4D4),
    this.textColor = Colors.black,
    this.type = TextInputType.text,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(alignment: Alignment.centerLeft, child: Text(label)),
        TextField(
          keyboardType: type,
          obscureText: obscureText,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            filled: true,
            fillColor: color,
            labelStyle: TextStyle(color: textColor),
          ),
          onTap: () async {
            final isDate = type == TextInputType.datetime;
            if (!isDate) return;
            DateTime? picked = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(1900),
              lastDate: DateTime(2100),
            );
          },
        ),
      ],
    );
  }
}
