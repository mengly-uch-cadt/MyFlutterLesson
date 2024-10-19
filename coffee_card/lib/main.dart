import 'package:flutter/material.dart';
import 'package:coffee_card/home.dart';

void main() {
    runApp( const MaterialApp(
      // home: Sandbox(),
      home: Home(),
    ));
}

class Sandbox extends StatelessWidget{
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sandbox"),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end, // cros same as x-axis
        mainAxisAlignment: MainAxisAlignment.center, // main same as y-axis
        children: [
          Container(
            color: Colors.brown[200],
            padding: const EdgeInsets.all(20),
            child: const Text("Hello Mother fucker...."),
          ),
          Container(
            color: Colors.brown[100],
            padding: const EdgeInsets.all(20),
            child: const Text("Hello Mother fucker 2...."),
          )
        ],
      ),
    );
  }
}
