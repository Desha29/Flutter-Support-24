// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final email = TextEditingController();

  final password = TextEditingController();

  var forkey = GlobalKey<FormState>();

  bool visible = false;
  @override
  void initState() {
    visible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Flight App",
            style: TextStyle(
                color: const Color.fromARGB(255, 170, 221, 163),
                fontSize: 30,
                fontWeight: FontWeight.bold),
          )),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Form(
            key: forkey,
            child: Column(
              children: [
                SizedBox(height: 85),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 120,
                  child: Lottie.asset('assets/images/a2.json'),
                ),
                SizedBox(height: 70),
                Container(
                  width: 350,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: email,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Field is empty!";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                          hintText: "Please Enter Your Email",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.greenAccent, width: 3),
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 350,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: TextFormField(
                      obscureText: !visible,
                      keyboardType: TextInputType.visiblePassword,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Field is empty!";
                        }
                        return null;
                      },
                      controller: password,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  visible = !visible;
                                });
                              },
                              icon: Icon(
                                visible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: const Color.fromARGB(255, 170, 221, 163),
                              )),
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                          hintText: "Please Enter Your Password",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.greenAccent, width: 3),
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                InkWell(
                  onTap: () {
                    if (forkey.currentState!.validate()) {
                      Navigator.pushNamed(context, "Home");
                    }
                  },
                  child: Container(
                    height: 50,
                    width: 168,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23),
                        color: const Color.fromARGB(255, 170, 221, 163)),
                    child: Center(
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 33,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
