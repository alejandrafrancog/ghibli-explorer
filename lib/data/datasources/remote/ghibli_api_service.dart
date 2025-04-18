import 'package:ghibli_explorer/data/models/film.dart';
import 'package:dio/dio.dart';
import 'package:ghibli_explorer/data/models/film_dto.dart';
import 'package:ghibli_explorer/data/models/people_dto.dart';
import 'package:ghibli_explorer/data/models/people.dart';

import 'package:ghibli_explorer/core/constants/constants.dart';
class GhibliApiService {
   Dio dio = Dio();

  Future<List<Film>> getFilms() async {
    try {
      final response = await dio.get(UrlConstants.filmsUrl);
      if (response.statusCode == 200) {
        // Mapear la respuesta a objetos Film
        return (response.data as List)
            .map((filmData) => FilmDto.fromJson(filmData).toEntity())
            .toList();
      } else {
        throw Exception("Couldn't load the movies");
      }
    } catch (e) {
      throw Exception('Something went wrong: $e');
    }
  }
    Future<List<People>> getCharacters() async {
    try {
      final response = await dio.get(UrlConstants.charactersUrl);
      if (response.statusCode == 200) {
        // Mapear la respuesta a objetos People
        return (response.data as List)
            .map((peopleData) => PeopleDTO.fromJson(peopleData).toEntity())
            .toList();
      } else {
        throw Exception("Something went wrong! Couldn't find characters");
      }
    } catch (e) {
      throw Exception('Error loading data: $e');
    }
  }
}

