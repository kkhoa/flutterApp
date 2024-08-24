import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../screens/login/login.dart';

class OnBoardingController extends GetxController {
  // Singleton pattern to access the controller instance
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    pageController.addListener(() {
      currentPageIndex.value = pageController.page?.toInt() ?? 0;
    });
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  // Method to update page indicator
  void updatePageIndicator(int pageIndex) {
    currentPageIndex.value = pageIndex;
  }

  // Method to handle dot navigation click
  void dotNavigationClick(int pageIndex) {
    pageController.jumpToPage(pageIndex);
  }

  // Method to go to the next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      final storage = GetStorage();
      storage.write('IsFirstTime', false);
      Get.to(() => const LoginScreen()); // Navigate to LoginScreen when the last page is reached
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  // Method to skip the onboarding
  void skipPage() {
    pageController.jumpToPage(2);
    Get.to(() => const LoginScreen()); // Navigate to LoginScreen or another page
  }
}
