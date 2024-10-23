import 'package:flutter/material.dart';
import 'package:flutter_rpg/models/vocation.dart';
import 'package:flutter_rpg/screens/create/vocation_card.dart';
import 'package:flutter_rpg/shared/styled_button.dart';
import 'package:flutter_rpg/shared/styled_text.dart';
import 'package:flutter_rpg/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {

  final _nameController = TextEditingController();
  final _sloganController = TextEditingController();

  // clean up the controller 
  @override 
  void dispose() {
    // TODO: implement dispose
    _nameController.dispose();
    _sloganController.dispose();
    super.dispose();
  }

  void handleSubmit(){
    if(_nameController.text.trim().isEmpty){
      print("Name must be not empty");
      return ;
    }
    if(_sloganController.text.trim().isEmpty){
      print("Slogan must be not empty");
      return ;
    }

    print(_nameController.text);
    print(_sloganController.text);
  
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Character"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          children: [
            Center(
              child: Icon(Icons.code, size: 100, color: AppColors.primaryColor),
            ),
            const Center(
              child: StyledHeading('Welcome, new player.'),
            ),
            const Center(
              child: StyledText("Create a name & slogan for your character"),
            ),
            const SizedBox(height: 20),
            
            // Create form input for name 
            TextField(
              controller: _nameController,
              cursorColor: AppColors.textColor,
              decoration:const InputDecoration(
                prefixIcon: Icon(Icons.person),// set icon for input 
                label: StyledText("Character name")
              ),
              style: GoogleFonts.kanit(
                textStyle: Theme.of(context).textTheme.bodyMedium
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _sloganController,
              cursorColor: AppColors.textColor,
              decoration:const InputDecoration(
                prefixIcon: Icon(Icons.person),// set icon for input 
                label: StyledText("Create slogan")
              ),
            ),
            const SizedBox(height: 20),
        
            VocationCard(
              vocation: Vocation.junkie
            ),
            const VocationCard(
              vocation: Vocation.ninja
            ),
            const VocationCard(
              vocation: Vocation.raider
            ),
            const VocationCard(
              vocation: Vocation.wizard
            ),
    
            
            

            Center(
              child: StyledButton(
                onPressed: handleSubmit, 
                child: const StyledHeading("Create Character")
              ),
            ),
          ],
        ),
      ),
    );
  }
}