import 'package:flight_app/screens/bookTickets_screen.dart';
import 'package:flight_app/screens/home_screen.dart';
import 'package:flight_app/screens/login_screen.dart';
import 'package:flight_app/screens/profileInfo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: LoginScreen(),
      routes: {
        'Login': (context) => LoginScreen(),
        'Home': (context) => HomeScreen(),
        'BooktTickets': (context) => BookTickets(),
        'Profile': (context) => ProfileInfo(),
      },
    );
  }
}
