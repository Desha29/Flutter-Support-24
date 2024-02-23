import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:movie_mingle/controller/auth/login_controller.dart';
import 'package:movie_mingle/core/constant/imageassets.dart';
import 'package:movie_mingle/core/functions/validinput.dart';
import 'package:movie_mingle/view/widget/auth/custombuttonauth.dart';
import 'package:movie_mingle/view/widget/auth/customtextbody.dart';
import 'package:movie_mingle/view/widget/auth/customtextfieldform.dart';
import 'package:movie_mingle/view/widget/auth/customtextsign.dart';
import 'package:movie_mingle/view/widget/auth/customtitle.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    LoginImp controller = Get.put(LoginImp());
    return Scaffold(
      backgroundColor: const Color(0xff1f1f1f),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomTitleAuth(
            height: height,
            width: width,
            text: "Welcome\nBack to ",
            image: AppImageAssets.login2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Form(
              key: controller.formstate,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomTextBodyAuth(
                      texttitle: "Login",
                      textbody:
                          "Enter your email & valid password to continue"),
                  const SizedBox(height: 50),
                  CustomTextFormAuth(
                    keyboardType: TextInputType.emailAddress,
                    validate: (val) {
                      return validInput(val!, 5, 50, "email");
                    },
                    labeltext: "Email",
                    hinttext: "Enter your Email",
                    iconData: Icons.email_outlined,
                    mycontroller: controller.email,
                  ),
                  CustomTextFormAuth(
                    keyboardType: TextInputType.visiblePassword,
                    validate: (val) {
                      return validInput(val!, 5, 30, "password");
                    },
                    labeltext: "Password",
                    hinttext: "Enter your password",
                    iconData: Icons.visibility_off,
                    mycontroller: controller.password,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 230),
                    child: const Text(
                      "Forget Password ?",
                      textAlign: TextAlign.end,
                    ),
                  ),
                  const SizedBox(height: 30),
                  CustomButtonAuth(
                    text: "Log In",
                    onPressed: () {
                      controller.login();
                    },
                  ),
                  SizedBox(height: 30),
                  CustomTextSign(
                    text: "Don't have an account? ",
                    sign: "Sign Up",
                    onTap: () {
                      controller.goToSignUp();
                    },
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
