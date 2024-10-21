import 'package:flutter/material.dart';
import 'package:flutter_rpg/shared/styled_button.dart';
import 'package:flutter_rpg/shared/styled_text.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List characters = ['mario', 'luigi', 'peach', 'toad', 'bowser', 'koopa', 'toad', 'bowser', 'koopa'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Characters"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // use expanded for scrollable and make the gap look good 
            Expanded(
              child: ListView.builder(
                itemCount: characters.length,
                itemBuilder: (_, index){  // a function for builder need 2 parameter but use _ for unused parameter
                  return Container(
                    color: Colors.grey[800],
                    padding: const EdgeInsets.all(40),
                    margin: const EdgeInsets.only(bottom: 40),
                    child: Text(characters[index]),
                  );
                }),
            ),



            // Create btn 
            StyledButton(
              onPressed: (){} , 
              child: const Text("create new")
            )
          ],
        ),
      ),
    );
  }
}