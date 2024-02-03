// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flight_app/screens/profileInfo.dart';
import 'package:flight_app/widgets/home.dart';
import 'package:flight_app/widgets/lastTravel.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final search = TextEditingController();

int selectIndex = 0;
List<Widget> widgetPages = [
  Home(),
  Center(
      child: Icon(
    Icons.favorite,
    size: 50,
  )),
  Center(
      child: Icon(
    Icons.search,
    size: 50,
  )),
  ProfileInfo(),
];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: widgetPages.elementAt(selectIndex),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.airplane_ticket_outlined,
            size: 27,
            color: Color.fromARGB(255, 20, 134, 118),
          ),
          backgroundColor: Color.fromARGB(255, 168, 223, 168),
          onPressed: () {
            Navigator.pushNamed(context, "BooktTickets");
          },
        ),
        bottomNavigationBar: Container(
          color: Color.fromARGB(255, 20, 134, 118),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: GNav(
                selectedIndex: selectIndex,
                iconSize: 26,
                textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                onTabChange: (value) {
                  setState(() {
                    selectIndex = value;
                  });
                },
                backgroundColor: Color.fromARGB(255, 20, 134, 118),
                color: Colors.black,
                activeColor: Colors.white,
                tabBackgroundColor: Color.fromARGB(255, 168, 223, 168),
                padding: EdgeInsets.all(18),
                gap: 8,
                tabs: [
                  GButton(
                    icon: Icons.home_filled,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.favorite,
                    text: 'Likes',
                  ),
                  GButton(
                    icon: Icons.search,
                    text: 'Search',
                  ),
                  GButton(
                    icon: Icons.person,
                    text: 'Profile',
                  ),
                ]),
          ),
        ));
  }
}
/*


BottomNavigationBar(
        selectedItemColor: Color.fromARGB(255, 189, 189, 189),
        currentIndex: index,
        backgroundColor: Color.fromARGB(255, 20, 134, 118),
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                size: 30,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 30,
              ),
              label: "Account")
        ],
        onTap: (value) {
          setState(() {
            index = value;
          });
          Navigator.pushNamed(context, "Profile");
        },
      ),
      */