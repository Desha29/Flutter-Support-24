import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/model/movies_model.dart';
import '/../view/widget/home/MovieRoundImage.dart';
import '../../../controller/moviesdata_controlletr.dart';
import '../../../controller/get_movies.dart';
import '../../../core/constant/routes.dart';

class MovieSlider extends StatefulWidget {
  MovieSlider({
    super.key,
  });

  @override
  State<MovieSlider> createState() => _MovieSliderState();
}

class _MovieSliderState extends State<MovieSlider> {
  void initState() {
    // TODO: implement initState
    super.initState();
    MoviesData().getData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: MoviesData.movies.isEmpty
          ? const Center(
              child: CircularProgressIndicator(
              color: Color.fromARGB(255, 237, 55, 55),
            ))
          : CarouselSlider.builder(
              itemCount:
                  MoviesData.movies == null ? 0 : MoviesData.movies.length,
              options: CarouselOptions(
                  viewportFraction: 1,
                  autoPlayCurve: Curves.ease,
                  autoPlay: true,
                  autoPlayAnimationDuration: const Duration(seconds: 2),
                  enlargeCenterPage: true,
                  pageSnapping: false),
              itemBuilder: (context, index, realIndex) {
                return InkWell(
                  onTap: () async {
                    DioHelper.id = MoviesData.movies[index].id.toString();
                    List castList = await DioHelper().getCasts();
                    MoviesData.casts = Casts.convertToCasts(castList);

                    Get.toNamed(AppRoutes.moviepage, arguments: index);
                  },
                  child: MovieRoundImage(
                    MovieImage: "https://image.tmdb.org/t/p/w500" +
                        MoviesData.movies[index].posterPath,
                    Moviename: MoviesData.movies[index].title,
                    Rating: MoviesData.movies[index].voteCount.toString(),
                    Stars: MoviesData.movies[index].voteAverage,
                  ),
                );
              },
            ),
    );
  }
}
