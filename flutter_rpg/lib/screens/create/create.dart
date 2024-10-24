import 'package:flutter/material.dart';
import 'package:flutter_rpg/models/character.dart';
import 'package:flutter_rpg/models/vocation.dart';
import 'package:flutter_rpg/screens/create/vocation_card.dart';
import 'package:flutter_rpg/shared/styled_button.dart';
import 'package:flutter_rpg/shared/styled_text.dart';
import 'package:flutter_rpg/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uuid/uuid.dart';


var uuid = const Uuid(); 

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
  // Handle vocation selection
  Vocation selectedVocation = Vocation.junkie;

  void updateVocation(Vocation vocation){
    setState(() {
      selectedVocation = vocation;
    });
  }

  void handleSubmit(){
    if(_nameController.text.trim().isEmpty){
          print('Name is required');
      return ;
    }
    if(_sloganController.text.trim().isEmpty){
          print('Slogan is required');
      return ;
    }

    characters.add(Character(
      name: _nameController.text.trim(), 
      slogan: _sloganController.text.trim(), 
      vocation: selectedVocation, 
      id: uuid.v4()
    ));  
    // Print the newly added character
    // print('New Character Added: $characters');

    // Print all characters
    // print('All Characters:');
    // for (var character in characters) {
    //   print(character);
    // }
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
        child: SingleChildScrollView(
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
                style: GoogleFonts.kanit(
                  textStyle: Theme.of(context).textTheme.bodyMedium
                ),
              ),
              // select vocation title
              Center(
                child: Icon(Icons.code, color: AppColors.primaryColor),
              ),
              const Center(
                child: StyledHeading('Choose a Vocation.')
              ),
              const Center(
                child: StyledText('This determines your available skills.')
              ),
              const SizedBox(height:30),
          
              VocationCard(
                vocation: Vocation.junkie,
                onTap: updateVocation, 
                selected: selectedVocation == Vocation.junkie
              ),
              VocationCard(
                vocation: Vocation.ninja,
                onTap: updateVocation, 
                selected: selectedVocation == Vocation.ninja
              ),
              VocationCard(
                vocation: Vocation.raider,
                onTap: updateVocation, 
                selected: selectedVocation == Vocation.raider
              ),
              VocationCard(
                vocation: Vocation.wizard,
                onTap: updateVocation, 
                selected: selectedVocation == Vocation.wizard
              ),
              // good luck message
              Center(
                child: Icon(Icons.code, color: AppColors.primaryColor)
              ),
              const Center(
                child: StyledHeading('Good Luck.')),
              const Center(
                child: StyledText('And enjoy the journey ahead...'),
              ),
              const SizedBox(height: 30),
              Center(
                child: StyledButton(
                  onPressed: handleSubmit, 
                  child: const StyledHeading("Create Character")
                ),
              ),
            ],
          ),


        ),
        
      ),
    );
  }
}