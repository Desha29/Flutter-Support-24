import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_mingle/core/constant/routes.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
}

class LoginImp extends LoginController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;

  @override
  login() {
    var formdata = formstate.currentState;

    if (formdata!.validate()) {
      print("Valid");
      Get.offNamed(AppRoutes.home);
    } else {
      print("Not Valid");
    }
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoutes.signup);
    Get.delete<LoginImp>();
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
