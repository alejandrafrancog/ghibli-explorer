import 'package:flutter/material.dart';
import 'package:ghibli_explorer/data/models/people.dart';
import 'package:ghibli_explorer/core/constants/constants.dart';

class PeopleCard extends StatelessWidget{
  final People people;
  const PeopleCard({super.key,required this.people});
  @override
  Widget build(BuildContext context){
    
    return Card(
      margin: const EdgeInsets.symmetric(vertical:8.0,horizontal: 16.0),
      child:Padding(
          padding:const EdgeInsets.all(12),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(people.name,
              style:StyleConstants.title,
              ),
              Text(people.gender,
              style:StyleConstants.descriptionTxt,
              ),
              Text(
                "Release year: ${people.age.toString()}",
                style:StyleConstants.releaseYear
              ),
              

            ],
          ),
      ),
    );

  }
}