import 'package:flutter/material.dart';
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
              child: StyledHeading("Create Character"),
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
            )
          ],
        ),
      ),
    );
  }
}