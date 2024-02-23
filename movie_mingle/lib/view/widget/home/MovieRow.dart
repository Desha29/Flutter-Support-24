import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_mingle/controller/get_movies.dart';
import '../../../data/model/movies_model.dart';
import '/../core/constant/routes.dart';
import '../../../controller/moviesdata_controlletr.dart';

class MovieRow extends StatefulWidget {
  MovieRow({super.key, required this.title});
  final String title;

  @override
  State<MovieRow> createState() => _MovieRowState();
}

@override
class _MovieRowState extends State<MovieRow> {
  void initState() {
    // TODO: implement initState
    super.initState();

    MoviesData().getData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "See more",
                  style: TextStyle(
                    color: Color.fromARGB(255, 237, 55, 55),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline,
                    decorationColor: Color.fromARGB(255, 237, 55, 55),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 180,
            child: MoviesData.movies.length == 0
                ? const Center(
                    child: CircularProgressIndicator(
                    color: Color.fromARGB(255, 237, 55, 55),
                  ))
                : ListView.builder(
                    itemCount: MoviesData.movies == null
                        ? 0
                        : MoviesData.movies.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () async {
                          DioHelper.id = MoviesData.movies[index].id.toString();
                          List castList = await DioHelper().getCasts();
                          MoviesData.casts = Casts.convertToCasts(castList);

                          Get.toNamed(AppRoutes.moviepage, arguments: index);
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                                "https://image.tmdb.org/t/p/w500" +
                                    MoviesData.movies[index].posterPath,
                                fit: BoxFit.cover),
                          ),
                        ),
                      );
                    }),
          ),
        ],
      ),
    );
  }
}
