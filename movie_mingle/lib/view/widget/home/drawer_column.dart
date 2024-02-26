// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_mingle/core/constant/routes.dart';

class DrawerColumn extends StatelessWidget {
  DrawerColumn({super.key});
  List<IconData> drawerIcons = [
    Icons.stay_primary_landscape_outlined,
    Icons.favorite_border_rounded,
    Icons.movie_creation_outlined,
    Icons.movie_creation_outlined,
  ];
  List drawerdata = ["Recent", "Favourite", "Want to watch", "watched"];
//not a data
  String userName = "Name";
  String userEmail = "email@gmail.com";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 10),
      child: Column(
        children: [
          ListTile(
            leading:
                const CircleAvatar(backgroundColor: Colors.black, radius: 40),
            title: Text(
              userName,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              userEmail,
              style: const TextStyle(color: Colors.white70),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 400,
            child: ListView.builder(
                itemCount: drawerIcons.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {},
                    leading: Icon(drawerIcons[index]),
                    title: Text(
                      "${drawerdata[index]}",
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.white70),
                    ),
                  );
                }),
          ),
          InkWell(
            onTap: () {
              Get.offAllNamed(AppRoutes.login);
            },
            child: const ListTile(
              leading: Icon(
                Icons.logout,
              ),
              title: Text(
                "Logout",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.white70,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
