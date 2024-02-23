import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoryButton extends StatelessWidget {
  CategoryButton({super.key, required this.categoryName});
  String categoryName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 15),
      child: InkWell(
        onTap: () {},
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(134, 71, 55, 55)),
            padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 2),
            child: Center(
              child: Text(
                categoryName,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
            )),
      ),
    );
  }
}
