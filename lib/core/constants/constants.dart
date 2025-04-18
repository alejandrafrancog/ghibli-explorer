import 'package:flutter/material.dart';
class Constants{
  static const String appName = "Ghibli Explorer ✨";
  static const String filmsUrl = "https://ghibliapi.vercel.app/films";
  static const String welcomeMessage = "Welcome to Ghibli Explorer!";
}
class StyleConstants{
  static const title = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 30,
  );
  static const descriptionTxt = TextStyle(
    fontSize: 15,
    color:Colors.grey,
  ); 
  static const releaseYear = TextStyle(
    fontWeight: FontWeight.bold,
    color:Colors.grey,
  );
  static const appBarTitle = TextStyle(
    fontWeight: FontWeight.w800,
    color:Colors.white
  );
}