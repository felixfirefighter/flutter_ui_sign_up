import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String text;
  final Color color;

  Heading({this.text = '', this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w600,
        color: color,
      ),
    );
  }
}
