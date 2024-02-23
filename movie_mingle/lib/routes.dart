import 'package:flutter/material.dart';
import 'package:movie_mingle/core/constant/routes.dart';
import 'package:movie_mingle/view/screen/auth/login.dart';
import 'package:movie_mingle/view/screen/auth/signup.dart';
import 'package:movie_mingle/view/screen/home.dart';
import 'package:movie_mingle/view/screen/login_or_signup.dart';
import 'package:movie_mingle/view/screen/moviepage/movie_details.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.choose: (context) => LoginOrSignup(),
  AppRoutes.login: (context) => const Login(),
  AppRoutes.signup: (context) => const SignUp(),
  AppRoutes.home: (context) => HomePage(),
  AppRoutes.moviepage: (context) => MovieDetails(),
};
