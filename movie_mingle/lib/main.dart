import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:movie_mingle/data/datasource/static/static.dart';
import 'package:movie_mingle/routes.dart';
import 'package:movie_mingle/view/screen/auth/login.dart';
import 'package:movie_mingle/view/screen/home.dart';
import 'package:movie_mingle/view/screen/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      routes: routes,
      home: OnBoarding(),
    );
  }
}
