import 'package:movie_mingle/controller/get_movies.dart';

import 'package:movie_mingle/data/model/movies_model.dart';

class MoviesData {
  static List<Movies> movies = [];
  static List<Casts> casts = [];

  Future<void> getData() async {
    List moviesList = await DioHelper().getMovies();

    movies = Movies.convertToMovies(moviesList);
    print(movies.length);
    print(casts.length);
  }
}
