import 'package:flutter/material.dart';
import 'package:movie_mingle/data/model/onboardingmodel.dart';

class CustomTitleAuth extends StatelessWidget {
  final String text;
  final String image;
  const CustomTitleAuth({
    super.key,
    required this.height,
    required this.width,
    required this.text,
    required this.image,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          image,
          height: height / 2.8,
          width: width,
          fit: BoxFit.cover,
        ),
        Positioned(
          left: 20,
          top: 90,
          child: RichText(
              text: TextSpan(children: [
            TextSpan(
              text: text,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            const TextSpan(
              text: OnBoardingModel.logo,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Color(0xffe50914)),
            )
          ])),
        ),
        Positioned(
          top: 130,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: BoxDecoration(
              gradient: LinearGradient(stops: const [
                0.1,
                0.3,
                0.5,
                0.7,
                0.9
              ], colors: [
                Color(0xff1c1c1c).withOpacity(0.01),
                Color(0xff1c1c1c).withOpacity(0.3),
                Color(0xff1c1c1c).withOpacity(0.6),
                Color(0xff1c1c1c).withOpacity(0.9),
                Color(0xff1c1c1c)
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
          ),
        ),
      ],
    );
  }
}
