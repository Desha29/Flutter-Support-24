import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LastTravels extends StatelessWidget {
  List list = [
    {"country": "Kwi", "price": "\$300"},
    {"country": "Doha", "price": "\$450"},
    {"country": "London", "price": "\$150"},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          physics: ClampingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: list.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                width: 330,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 189, 189, 189),
                    borderRadius: BorderRadius.circular(40)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 15),
                      child: Text(
                        "${list[index]["price"]}",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 35,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Sun 5 Apr",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(width: 50),
                        Text(
                          "Sun 5 Apr",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "CAI",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(width: 125),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text(
                            "${list[index]["country"]}",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: Container(
                          height: 120,
                          width: 275,
                          child: Lottie.asset('assets/images/a1.json')),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
