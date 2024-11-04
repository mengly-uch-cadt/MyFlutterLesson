import 'package:flutter/material.dart';
import 'package:flutter_rpg/screens/create/create.dart';
import 'package:flutter_rpg/screens/home/character_cart.dart';
import 'package:flutter_rpg/services/charcter_store.dart';
import 'package:flutter_rpg/shared/styled_button.dart';
import 'package:flutter_rpg/shared/styled_text.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const StyledTitle("Your Characters"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // use expanded for scrollable and make the gap look good 
            Expanded(
              child: Consumer<CharacterStore>(
                builder: (context, value, child) {
                  return ListView.builder(
                    itemCount: value.characters.length,
                    itemBuilder: (_, index){  // a function for builder need 2 parameter but use _ for unused parameter
                      return CharacterCart(value.characters[index]); 
                    });
                }
              ),
            ),



            // Create btn 
            StyledButton(
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (ctx)=>const CreateScreen()
                  ));
              } , 
              child: const StyledText("create new")
            )
          ],
        ),
      ),
    );
  }
}