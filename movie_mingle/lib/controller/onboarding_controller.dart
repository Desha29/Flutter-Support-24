import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:movie_mingle/core/constant/routes.dart';
import 'package:movie_mingle/data/datasource/static/static.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnBoardingImplement extends OnBoardingController {
  int currentPage = 0;
  late PageController pageController;
  @override
  next() {
    currentPage++;
    if (currentPage > onBoardingList.length - 1) {
      Get.offAllNamed(AppRoutes.choose);
    } else {
      pageController.animateToPage(currentPage,
          duration: Duration(milliseconds: 450), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
