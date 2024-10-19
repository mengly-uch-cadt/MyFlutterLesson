import 'package:flutter/material.dart';

class CoffePrefs extends StatelessWidget {
  const CoffePrefs({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Column(
      children: [
        Row(
          children: [
            Text("Stregth: "),
            Text("3"),
            SizedBox(width: 50),
          ],
        ),
        Row(
          children: [
            Text("Sugars: "),
            SizedBox(width: 50), // set space between 
            Text("4"),
          ],
        )
      ],
    );
  }
}