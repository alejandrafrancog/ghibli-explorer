import 'package:flutter/material.dart';
import 'package:ghibli_explorer/data/models/film.dart';
import 'package:ghibli_explorer/core/constants/constants.dart';

class FilmCard extends StatelessWidget{
  final Film film;
  const FilmCard({super.key,required this.film});
  @override
  Widget build(BuildContext context){
    
    return Card(
      margin: const EdgeInsets.symmetric(vertical:8.0,horizontal: 16.0),
      child:Padding(
          padding:const EdgeInsets.all(12),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(film.title,
              style:StyleConstants.title,
              ),
              Text(film.description,
              style:StyleConstants.descriptionTxt,
              ),
              Text(
                "Release year: ${film.releaseYear.toString()}",
                style:StyleConstants.releaseYear
              ),
              

            ],
          ),
      ),
    );

  }
}