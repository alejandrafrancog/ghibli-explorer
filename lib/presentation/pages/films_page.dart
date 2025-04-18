import 'package:flutter/material.dart';
import 'package:ghibli_explorer/data/datasources/remote/ghibli_api_service.dart';
import 'package:ghibli_explorer/data/models/film.dart';
import 'package:ghibli_explorer/core/widgets/film_card.dart';
import 'package:ghibli_explorer/core/constants/constants.dart';

class FilmsPage extends StatefulWidget {
  const FilmsPage({super.key});

  @override
  FilmsPageState createState() => FilmsPageState();
}

class FilmsPageState extends State<FilmsPage> {
  final GhibliApiService ghibliApiService = GhibliApiService();
  late Future<List<Film>> films;

  @override
  void initState() {
    super.initState();
    films = ghibliApiService.getFilms();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Constants.appName, style: StyleConstants.appBarTitle),
        backgroundColor: const Color.fromRGBO(199, 158, 81, 1),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/ghibli.jpg'), // Asegúrate de tener esta ruta
            fit: BoxFit.cover,
          ),
        ),
        child: FutureBuilder<List<Film>>(
          future: films,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.amber, // Color que combine con tu diseño
                ),
              );
            }
            if (snapshot.hasError) {
              return Center(
                child: Text(
                  'Error: ${snapshot.error}',
                  style: const TextStyle(color: Colors.white),
                ),
              );
            }
            if (snapshot.hasData) {
              List<Film> filmsList = snapshot.data!;
              return ListView.builder(
                padding: const EdgeInsets.all(10),
                itemCount: filmsList.length,
                itemBuilder: (context, index) {
                  return FilmCard(
                    film: filmsList[index],
                  );
                },
              );
            }
            return const Center(
              child: Text(
                'No data available',
                style: TextStyle(color: Colors.white),
              ),
            );
          },
        ),
      ),
    );
  }
}