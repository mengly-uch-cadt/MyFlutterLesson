import "package:flutter/material.dart";

class StyledBodyText extends StatelessWidget {
  // set parameter in this funtion
  const StyledBodyText(this.text, {super.key});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
      color: Colors.brown[800],
      fontWeight: FontWeight.bold,
      fontSize: 14
    ),);
  }
}