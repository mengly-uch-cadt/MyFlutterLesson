import 'package:flutter/material.dart';
import 'package:flutter_rpg/models/character.dart';
import 'package:flutter_rpg/shared/styled_text.dart';
import 'package:flutter_rpg/theme.dart';

class CharacterCart extends StatelessWidget {
  const CharacterCart(this.character,{super.key});

  final Character character;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.secondaryColor,
      child: Padding(
        // padding: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            // Text(character),
            Image.asset('assets/img/vocations/${character.vocation.image}', 
              width: 80
            ),
            
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StyledHeading(character.name),
                StyledText(character.vocation.title),
              ],
            ), // same as space in vuetify
            const Expanded(
              child: SizedBox()
            ), // same as space between in vuetify
            
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.arrow_forward, color: AppColors.textColor,))
          ],
        ),
      ),
    );
  }
}