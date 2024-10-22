import 'package:flutter/material.dart';
import 'package:flutter_rpg/theme.dart';

class CharacterCart extends StatelessWidget {
  const CharacterCart(this.character,{super.key});

  final String character;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        // padding: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            Text(character),
            const Expanded(child: SizedBox()), // same as space between in vuetify
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.arrow_forward, color: AppColors.textColor,))
          ],
        ),
      ),
    );
  }
}