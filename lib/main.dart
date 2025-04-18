import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'presentation/pages/films_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FilmsPage(),
      theme:ThemeData(
          scaffoldBackgroundColor: Color(0xFFF5F5F5),

        textTheme: GoogleFonts.robotoCondensedTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF88B04B)),

      ),
    );
  }
}

