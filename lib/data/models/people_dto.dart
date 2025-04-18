import 'package:ghibli_explorer/data/models/people.dart';  
class PeopleDTO{
  final String id;
  final String name;
  final String gender;
  final String age;
  final String eyeColor;
  final String hairColor;

  PeopleDTO
  ({required this.id,
    required this.name,
    required this.gender,
    required this.age,
    required this.eyeColor,
    required this.hairColor});

  factory PeopleDTO.fromJson(Map<String, dynamic> json) => PeopleDTO(
        id: json['id'],
        name: json['name'],
        gender: json['gender'],
        age: json['age'],
        eyeColor: json['eye_color'], // 1986-07-18 → 1986
        hairColor:json['hair_color'],
      );

  People toEntity() => People(
        id: id,
        name: name,
        gender: gender,
        age: age,
        eye_color: eyeColor,
        hair_color: hairColor,
      );
}