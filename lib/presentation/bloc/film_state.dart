abstract class FilmState {}

class FilmInitial extends FilmState {}

class FilmLoading extends FilmState {}

class FilmLoaded extends FilmState {
  final List<String> films; // Usaremos datos simples por ahora
  FilmLoaded(this.films);
}

class FilmError extends FilmState {
  final String message;
  FilmError(this.message);
}