import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_mingle/core/constant/routes.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToLogin();
}

class SignUpImp extends SignUpController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController password;

  @override
  signUp() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      print("Valid");

      Get.offNamed(AppRoutes.home);
    } else {
      print("Not Valid");
    }
  }

  @override
  goToLogin() {
    Get.offNamed(AppRoutes.login);
    Get.delete<SignUpImp>();
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    username = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
