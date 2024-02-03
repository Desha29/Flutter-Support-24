import 'package:flight_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class BookTickets extends StatelessWidget {
  List _list = [
    {"Icon": Icons.home, "hint": "Flying Form"},
    {"Icon": Icons.location_on_outlined, "hint": "Flying To"},
    {"Icon": Icons.calendar_today, "hint": "Departing"},
    {"Icon": Icons.calendar_today, "hint": "Returning"},
    {"Icon": Icons.person, "hint": "Adults"},
    {"Icon": Icons.calendar_today, "hint": "Children"},
    {"Icon": Icons.list_sharp, "hint": "Travel Class"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Book Tickets",
          style: TextStyle(
            color: Color.fromARGB(255, 20, 134, 118),
            fontSize: 26,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                height: 600,
                child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    separatorBuilder: (context, index) => SizedBox(height: 10),
                    itemCount: _list.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 350,
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Field is empty!";
                              }
                              return null;
                            },
                            //controller: password,
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  _list[index]["Icon"],
                                  color: Color.fromARGB(255, 20, 134, 118),
                                  size: 26,
                                ),
                                fillColor: Colors.white,
                                filled: true,
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                                hintText: _list[index]["hint"],
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.greenAccent, width: 3),
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 60,
                  width: 190,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromARGB(255, 159, 158, 159)),
                  child: Center(
                    child: Text(
                      "BOOK NOW",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
