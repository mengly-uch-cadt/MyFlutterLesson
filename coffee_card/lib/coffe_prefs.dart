import 'package:flutter/material.dart';

class CoffePrefs extends StatefulWidget {
  const CoffePrefs({super.key});

  @override
  State<CoffePrefs> createState() => _CoffePrefsState();
}

class _CoffePrefsState extends State<CoffePrefs> {
  int stregnth =  1;
  int sugars = 0;
  void increaseStrength(){
    setState(
      (){
        stregnth = stregnth < 5 ? stregnth + 1 : 1;
      }
    );
  }

  void increaseSugars(){
    setState(() {
      sugars = sugars < 5 ? sugars + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text("Stregth: "),
            // Text("$stregnth"),
            // const SizedBox(width: 50),
            for (int i=0; i<stregnth; i++)
            // {
              Image.asset('assets/img/coffee-bean2.png',
                width: 15,
                colorBlendMode: BlendMode.dst,
                color: Colors.brown[100],
              ),
            // }
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
            // const SizedBox(width: 50), // set space between 
            if(sugars == 0 )
              const Text("No sugars..."),
            for (int i=0; i<sugars; i++)
              Image.asset('assets/img/sugar-cube2.png',
                width: 20,
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