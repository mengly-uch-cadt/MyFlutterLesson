import 'package:coffee_card/coffe_prefs.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My coffee id", style: TextStyle(
          color: Colors.amber,
          fontWeight: FontWeight.bold
        ),),
        backgroundColor: Colors.brown[700],
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end, // x 
        mainAxisAlignment: MainAxisAlignment.end, // y
        children: [
          Container(
            color: Colors.brown[500], 
            padding: const EdgeInsets.all(50),
            child: const Text("Thida so cute....."),
          ),
          Container(
            color: Colors.brown[300], 
            padding: const EdgeInsets.all(50),
            child: const CoffePrefs()
          )
        ],
      )
    );
  }
}