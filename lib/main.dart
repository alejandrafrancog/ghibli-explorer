import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'presentation/pages/home_page.dart';
import 'package:ghibli_explorer/presentation/pages/films_page.dart';
import 'package:ghibli_explorer/presentation/pages/characters_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: {
        '/films': (context) => const FilmsPage(),
        '/characters': (context) => const CharactersPage(),
        '/directors': (context) => const FilmsPage(),
      },
      theme:ThemeData(
          scaffoldBackgroundColor: Color(0xFFF5F5F5),

        textTheme: GoogleFonts.vigaTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF88B04B)),

      ),
    );
  }
}

