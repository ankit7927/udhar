import 'package:flutter/material.dart';

class TextDP extends StatelessWidget {
  const TextDP(
      {super.key,
      required this.text,
      required this.radius,
      required this.fontSize});

  final String text;
  final double radius, fontSize;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      child: Text(
        text[0].toUpperCase(),
        style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
      ),
    );
  }
}
