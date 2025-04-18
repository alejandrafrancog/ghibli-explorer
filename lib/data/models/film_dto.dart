import 'package:ghibli_explorer/data/models/film.dart';  
class FilmDto {
  final String id;
  final String title;
  final String description;
  final String director;
  final int releaseYear;

  FilmDto({
    required this.id,
    required this.title,
    required this.description,
    required this.director,
    required this.releaseYear,
  });

  factory FilmDto.fromJson(Map<String, dynamic> json) => FilmDto(
        id: json['id'],
        title: json['title'],
        description: json['description'],
        director: json['director'],
        releaseYear: int.parse(json['release_date'].split('-')[0]), // 1986-07-18 → 1986
      );

  Film toEntity() => Film(
        id: id,
        title: title,
        description: description,
        director: director,
        releaseYear: releaseYear,
      );
}