import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '/../controller/moviesdata_controlletr.dart';
import '/../view/widget/moviedetails/castrow.dart';
import '/../view/widget/moviedetails/movie_information_row.dart';
import '/../view/widget/moviedetails/rating_stars.dart';
import '../../widget/grandientcolors.dart';

class MovieDetails extends StatelessWidget {
  MovieDetails({super.key});

  var args = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          toolbarHeight: 30,
        ),
        body: Container(
          child: Stack(children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      alignment: FractionalOffset.topCenter,
                      image: NetworkImage("https://image.tmdb.org/t/p/w500" +
                          MoviesData.movies[args].backdropPath))),
            ),
            const GrandientColor(height: 200, top: 100, bottom: 0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 40, 0, 20),
                    height: 250,
                    child: Image.network(
                        "https://image.tmdb.org/t/p/w500${MoviesData.movies[args].posterPath}"),
                  ),
                  Center(
                    child: Column(children: [
                      Text(
                        MoviesData.movies[args].title,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        MoviesData.movies[args].voteAverage.toString(),
                        style: const TextStyle(
                            color: Color(0xffe50914),
                            fontSize: 20,
                            fontWeight: FontWeight.w800),
                      ),
                      RatingStars(
                          MovieStars: MoviesData.movies[args].voteAverage),
                      MovieInformationRow(
                          language:
                              MoviesData.movies[args].language.toUpperCase(),
                          year: MoviesData.movies[args].releaseDate,
                          rating: MoviesData.movies[args].voteCount.toString()),
                    ]),
                  ),
                  const Text(
                    "Storyline",
                    style: TextStyle(
                        color: Color(0xffe50914),
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    MoviesData.movies[args].overview,
                    style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      "Cast",
                      style: TextStyle(
                          color: Color(0xffe50914),
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const CastRow()
                ],
              ),
            ),
          ]),
        ));
  }
}
