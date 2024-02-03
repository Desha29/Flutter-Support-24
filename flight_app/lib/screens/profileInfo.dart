// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile information",
          style: TextStyle(
              color: const Color.fromARGB(255, 168, 223, 168),
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color.fromARGB(255, 237, 237, 237),
                  ),
                  height: 550,
                  width: 330,
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 230, top: 20),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.edit,
                          color: const Color.fromARGB(255, 83, 191, 84),
                          size: 23,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    CircleAvatar(
                      radius: 45,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.person,
                        color: const Color.fromARGB(255, 83, 191, 84),
                        size: 50,
                      ),
                    ),
                    Text(
                      "Nour",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    ),
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: Container(
                  height: 250,
                  width: 280,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50, right: 70),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "User Name:",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 182, 182, 182),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Nour Ayman",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40),
                      Padding(
                        padding: const EdgeInsets.only(right: 100),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Password:",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 182, 182, 182),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "nour123",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40),
                      Padding(
                        padding: const EdgeInsets.only(right: 80),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Location:",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 182, 182, 182),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Cairo,Egypt",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
