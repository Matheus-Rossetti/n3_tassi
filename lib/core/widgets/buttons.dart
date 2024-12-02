import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final String text;
  final VoidCallback onPressed;

  const CustomFlatButton(
      {super.key,
      this.height = 100,
      this.width = 100,
      required this.color,
      required this.text,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 70,
        width: 300,
        decoration: BoxDecoration(
            color: color.withOpacity(0.3),
            border:
                Border.all(color: color, style: BorderStyle.solid, width: 2),
            borderRadius: BorderRadius.circular(10)),
        child: TextButton(
          onPressed: onPressed,
          child: Text(text,
              style: TextStyle(
                  color: color, fontSize: 25, fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
