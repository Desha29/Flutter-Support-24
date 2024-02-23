import 'package:dio/dio.dart';

class DioHelper {
  Dio dio = Dio();
  static late String id;
  Future<List> getMovies() async {
    Response response = await dio.get(
        'https://api.themoviedb.org/3/movie/upcoming?api_key=f87a718c0481b6962a7c5c4a51ef2757');
    print(response.data.toString());
    return response.data["results"];
  }

  Future<List> getCasts() async {
    Response response = await dio.get(
        'https://api.themoviedb.org/3/movie/$id/credits?api_key=f87a718c0481b6962a7c5c4a51ef2757');
    print(response.data.toString());
    return response.data["cast"];
  }
}
