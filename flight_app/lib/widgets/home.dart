import 'package:flight_app/widgets/lastTravel.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 500,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 20, 134, 118),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50))),
                child: Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 34,
                              backgroundColor:
                                  const Color.fromARGB(255, 167, 223, 168),
                              child: Text(
                                "N",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 38,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(width: 13),
                            Text(
                              "Welcome back, Nour.",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 45, right: 8, left: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "CAI",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(width: 13),
                            Text(
                              "Fr 1 FEB.",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: 350,
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            controller: search,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Field is empty!";
                              }
                              return null;
                            },
                            //controller: password,
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.home,
                                  color: Color.fromARGB(255, 20, 134, 118),
                                  size: 26,
                                ),
                                fillColor: Colors.white,
                                filled: true,
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                                hintText: "Search here",
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.greenAccent, width: 3),
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, right: 150),
                        child: Text(
                          "Your Last Travels",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 420, left: 60, right: 60),
                child: Container(
                  height: 300,
                  width: 350,
                  child: LastTravels(),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
