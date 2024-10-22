
import 'package:flutter_rpg/models/stats.dart';

class Character with Stats{
  
  final String name;
  final String slogan;
  final String id; 
  bool _isFav = false;

  Character({
    required this.name,
    required this.slogan,
    required this.id
  });

  void toggleIsFav(){
    _isFav = !_isFav;
  }

}