import 'package:flutter/material.dart';

class CustomInput extends StatefulWidget {
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
  _CustomInputState createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(alignment: Alignment.centerLeft, child: Text(widget.label)),
        TextField(
          controller: _controller,
          keyboardType: widget.type,
          obscureText: widget.obscureText,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            filled: true,
            fillColor: widget.color,
            labelStyle: TextStyle(color: widget.textColor),
          ),
          onTap: () async {
            final isDate = widget.type == TextInputType.datetime;
            if (!isDate) return;
            DateTime? picked = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(1900),
              lastDate: DateTime(2100),
            );
            if (picked != null) {
              _controller.text = "${picked.day}/${picked.month}/${picked.year}";
            }
          },
        ),
      ],
    );
  }
}
