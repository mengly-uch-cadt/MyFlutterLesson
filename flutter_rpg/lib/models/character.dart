
import 'package:flutter_rpg/models/stats.dart';
import 'package:flutter_rpg/models/vocation.dart';
import 'package:flutter_rpg/models/skill.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class Character with Stats{
  
  final Set<Skill> skills = {};
  final Vocation vocation;
  final String name;
  final String slogan;
  final String id; 
  bool _isFav = false;

  Character({
    required this.name,
    required this.slogan,
    required this.vocation,
    required this.id
  });

  //getters
  get isFav => _isFav;

  void toggleIsFav(){
    _isFav = !_isFav;
  }
  void updateSkills(Skill skill) {
    skills.clear();
    skills.add(skill);
  }

  // Character to firestore (map)
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'slogan': slogan,
      'isFav': _isFav,
      'vocation': vocation.toString(),
      'skills': skills.map((s) => s.id).toList(),
      'stats': statsAsMap,
      'points': points,
    };
  }

  // character from firestore 
  factory Character.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {

    // get data from snapshot
    final data = snapshot.data()!;

    // make character instance
    Character character = Character(
      name: data['name'],
      vocation: Vocation.values.firstWhere((v) => v.toString() == data['vocation']),
      slogan: data['slogan'],
      id: snapshot.id
    );

    // update skills
    for (String id in data['skills']) {
      Skill skill = allSkills.firstWhere((element) => element.id == id);
      character.updateSkills(skill);
    }

    // set isFav
    if(data['isFav'] == true) {
      character.toggleIsFav();
    }

    return character;
  } 

}

// dummy character data
List<Character> characters = [
  Character(id: '1', name: 'Klara', vocation: Vocation.wizard, slogan: 'Kapumf!'),
  Character(id: '2', name: 'Jonny', vocation: Vocation.junkie, slogan: 'Light me up...'),
  Character(id: '3', name: 'Crimson', vocation: Vocation.raider, slogan: 'Fire in the hole!'),
  Character(id: '4', name: 'Shaun', vocation: Vocation.ninja, slogan: 'Alright then gang.'),
];