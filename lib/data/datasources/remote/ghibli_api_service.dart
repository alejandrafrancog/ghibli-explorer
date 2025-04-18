import 'package:ghibli_explorer/data/models/film.dart';
import 'package:dio/dio.dart';
import 'package:ghibli_explorer/data/models/film_dto.dart';
import 'package:ghibli_explorer/core/constants/constants.dart';
class GhibliApiService {
  final Dio dio = Dio();

  Future<List<Film>> getFilms() async {
    try {
      final response = await dio.get(Constants.filmsUrl);
      if (response.statusCode == 200) {
        // Mapear la respuesta a objetos Film
        return (response.data as List)
            .map((filmData) => FilmDto.fromJson(filmData).toEntity())
            .toList();
      } else {
        throw Exception('Error al cargar las películas');
      }
    } catch (e) {
      throw Exception('Error al cargar las películas: $e');
    }
  }
}

