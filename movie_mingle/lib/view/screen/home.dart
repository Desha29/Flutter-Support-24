import 'package:flutter/material.dart';
import 'package:movie_mingle/view/widget/home/CategoryButton.dart';
import 'package:movie_mingle/view/widget/home/DrawerColumn.dart';
import 'package:movie_mingle/view/widget/home/MovieRow.dart';
import 'package:movie_mingle/view/widget/home/MoviesSlider.dart';
import '../../controller/moviesdata_controlletr.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> CategoryNames = [
    "Action",
    "Drama",
    "Comedy",
    "Horror",
    "Romance",
    "Cartoon"
  ];

  @override
  Widget build(BuildContext context) {
    void initState() {
      // TODO: implement initState
      super.initState();

      setState(() {});
    }

    return Scaffold(
        drawer: Drawer(
          backgroundColor: Color(0xff2a2a2a),
          child: DrawerColumn(),
        ),
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            iconTheme: const IconThemeData(size: 30, color: Colors.white70),
            actions: [
              InkWell(
                  onTap: () {
                    print(MoviesData.movies.length);
                    print(MoviesData.casts.length);
                  },
                  child: const Icon(
                    Icons.add,
                  )),
              SizedBox(width: 10),
              InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.search,
                  )),
              SizedBox(width: 10),
              InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.notifications_none_rounded,
                  )),
            ]),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              const Text(
                "Trending Movies",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              MovieSlider(),
              SizedBox(
                height: 60,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: CategoryNames.length,
                  itemBuilder: (context, index) {
                    return CategoryButton(categoryName: CategoryNames[index]);
                  },
                ),
              ),
              MovieRow(title: "Upcoming"),
              MovieRow(title: "Now Playing"),
              MovieRow(title: "Top Rated"),
              MovieRow(title: "Popular"),
            ],
          ),
        ));
  }
}
