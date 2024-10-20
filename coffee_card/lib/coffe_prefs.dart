import 'package:flutter/material.dart';

class CoffePrefs extends StatelessWidget {
  const CoffePrefs({super.key});
  void increaseStrength(){
    print("inc strenght");
  }
  void increaseSugars(){
    print("inc sugars");
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text("Stregth: "),
            const Text("3"),
            // const SizedBox(width: 50),
            Image.asset('assets/img/coffee-bean2.png',
              width: 15,
              colorBlendMode: BlendMode.dst,
              color: Colors.brown[100],
            ),
            const Expanded(child: SizedBox()),
            // const Text("+"),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white
              ),
              onPressed: increaseStrength, 
              child: const Text("+")
            )
          ],
        ),
        Row(
          children: [
            const Text("Sugars: "),
            const Text("4"),
            // const SizedBox(width: 50), // set space between 
            Image.asset('assets/img/sugar-cube2.png',
              width: 25,
              colorBlendMode: BlendMode.dst,
              color: Colors.brown[100],
            ),
            const Expanded(child: SizedBox()),
            // const Text("+"),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white
              ),
              onPressed: increaseSugars,
              child: const Text("+")
            )

          ],
        )
      ],
    );
  }
}