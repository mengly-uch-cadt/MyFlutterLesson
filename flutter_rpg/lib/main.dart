import 'package:flutter/material.dart';
import 'package:flutter_rpg/screens/home.dart';
import 'package:flutter_rpg/theme.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: primaryTheme,
    home:const Home(),
  ));
}