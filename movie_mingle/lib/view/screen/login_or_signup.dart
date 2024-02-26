import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/instance_manager.dart';
import 'package:movie_mingle/core/constant/imageassets.dart';
import 'package:movie_mingle/core/constant/routes.dart';
import 'package:movie_mingle/data/model/onboardingmodel.dart';
import 'package:movie_mingle/view/widget/auth/custombuttonauth.dart';

import '../../controller/moviesdata_controlletr.dart';

// ignore: must_be_immutable
class LoginOrSignup extends StatelessWidget {
  LoginOrSignup({super.key});
  MoviesData controller = Get.put(MoviesData());

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: height,
            width: width,
            child: Image.asset(
              AppImageAssets.login1,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            child: Column(
              children: [
                SizedBox(height: height / 2.5),
                const Center(
                  child: Text(
                    OnBoardingModel.logo,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 55,
                        color: Color(0xffe50914)),
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  "LET'S GET STARTED",
                  style: TextStyle(
                      letterSpacing: 5,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color.fromARGB(255, 224, 224, 224)),
                ),
                const SizedBox(height: 170),
                CustomButtonAuth(
                  text: "Log In",
                  onPressed: () {
                    Get.offNamed(AppRoutes.login);
                  },
                ),
                SizedBox(height: 40),
                CustomButtonAuth(
                  text: "Sign Up",
                  onPressed: () {
                    print(MoviesData.upComingMovies.length);
                    Get.offNamed(AppRoutes.signup);
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
