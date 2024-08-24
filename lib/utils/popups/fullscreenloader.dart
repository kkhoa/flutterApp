import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webapp/common/widgets/loaders/animation_loader.dart';
import 'package:webapp/utils/constants/colors.dart';
import 'package:webapp/utils/helpers/helper_functions.dart';

class KFullscreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context: Get.overlayContext!,
      barrierDismissible: false,
      builder: (_) => PopScope(
        canPop: false,
        child: Container(
          color: KHelperFunctions.isDarkMode(Get.context!) ? KColors.dark : KColors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              KAnimationLoader(text: text, animation: animation),
            ],
          ),
        ),
      ),
    );
  }

  static void stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
