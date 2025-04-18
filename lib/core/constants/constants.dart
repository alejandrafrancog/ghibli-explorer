import 'package:flutter/material.dart';
class Constants{
  static const String appName = "Ghibli Explorer ✨";
  static const String filmsTitle = " 🎥 Films";
  static const String charactersTitle = "🧚‍♀️ Characters";
  static const String locationsTitle = "🛤️ Locations";

  static const String welcomeMessage = "\n\n\n\t\t\t\t\t\t\t\tWelcome to\n✨Ghibli Explorer!✨";
}
class UrlConstants{
  static const String charactersUrl = "https://ghibliapi.vercel.app/people";
  static const String filmsUrl = "https://ghibliapi.vercel.app/films";

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
  static const welcomeMessage = TextStyle(
    fontWeight: FontWeight.bold,
    shadows: [
    Shadow(
      offset: Offset(5, 5), // Desplazamiento (horizontal, vertical)
      blurRadius: 100,         // Intensidad del difuminado
      color: Colors.white, // Color de la sombra
    ),
  ],
    color:Color.fromARGB(255, 66, 12, 97),
    fontSize: 35,
  );
   static final ButtonStyle primaryButton = ButtonStyle(
    
    backgroundColor: WidgetStateProperty.all(Colors.white),
   
    fixedSize: WidgetStateProperty.all(
      Size(250, 59)
    ),
    foregroundColor: WidgetStateProperty.all(Colors.black),
    padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 15, horizontal: 40)),
    shape: WidgetStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      
    ),
  );
  static const txtButton = TextStyle(
    fontSize:20
  );
}
