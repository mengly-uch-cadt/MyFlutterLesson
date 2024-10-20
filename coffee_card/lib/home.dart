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
        crossAxisAlignment: CrossAxisAlignment.stretch, // x 
        mainAxisAlignment: MainAxisAlignment.start, // y
        children: [
          Container(
            color: Colors.brown[500], 
            padding: const EdgeInsets.all(10),
            child: const Text("How I like my coffee...."),
          ),
          Container(
            color: Colors.brown[300], 
            padding: const EdgeInsets.all(10),
            child: const CoffePrefs()
          ),
          Expanded(
            child: Image.asset("assets/img/coffee-bg.jpg",
              fit: BoxFit.fitWidth,
              alignment: Alignment.bottomCenter,
            )
          )
        ],
      )
    );
  }
}