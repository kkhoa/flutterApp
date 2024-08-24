import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:webapp/features/authentication/controllers/onboarding_controller.dart';
import 'package:webapp/utils/constants/colors.dart';
import 'package:webapp/utils/constants/image_string.dart';
import 'package:webapp/utils/constants/size.dart';
import 'package:webapp/utils/constants/texts_string.dart';
import 'package:webapp/utils/device/device_utility.dart';
import 'package:webapp/utils/helpers/helper_functions.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final OnBoardingController controller = Get.put(OnBoardingController());
    final bool isDarkMode = KHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(KSize.defaultSpace),
            child: PageView(
              controller: controller.pageController,
              onPageChanged: controller.updatePageIndicator,
              children: const [
                OnBoardingPage(
                  image: KImages.onBoardingImage1,
                  title: KTexts.onBoardingTitle1,
                  subTitle: KTexts.onBoardingSubTitle1,
                ),
                OnBoardingPage(
                  image: KImages.onBoardingImage2,
                  title: KTexts.onBoardingTitle2,
                  subTitle: KTexts.onBoardingSubTitle2,
                ),
                OnBoardingPage(
                  image: KImages.onBoardingImage3,
                  title: KTexts.onBoardingTitle3,
                  subTitle: KTexts.onBoardingSubTitle3,
                ),
              ],
            ),
          ),
          Positioned(
            top: KDeviceUtils.getAppBarHeight(),
            right: KSize.defaultSpace,
            child: TextButton(
              onPressed: () {
                controller.skipPage(); // Navigate to the next screen
              },
              child: Text(
                'Skip',
                style: TextStyle(color: isDarkMode ? Colors.white : Colors.black),
              ),
            ),
          ),
          Positioned(
            bottom: KDeviceUtils.getButtonNavigationBarHeight() + 25,
            left: KSize.defaultSpace,
            child: Center(
              child: SmoothPageIndicator(
                controller: controller.pageController,
                count: 3,
                effect: ExpandingDotsEffect(
                  activeDotColor: isDarkMode ? KColors.light : KColors.dark,
                  dotHeight: 8,
                ),
              ),
            ),
          ),
          Positioned(
            right: KSize.defaultSpace,
            bottom: KDeviceUtils.getButtonNavigationBarHeight(),
            child: ElevatedButton(
              onPressed: () {
                if (controller.pageController.page?.toInt() == 2) {
                  controller.skipPage(); // Handle last page action
                } else {
                  controller.nextPage(); // Navigate to the next page
                }
              },
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: isDarkMode ? KColors.primary : Colors.black,
              ),
              child: const Icon(Iconsax.arrow_right_4),
            ),
          ),
        ],
      ),
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(KSize.defaultSpace),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            width: KHelperFunctions.screenWidth() * 0.8,
            height: KHelperFunctions.screenHeight() * 0.6,
            image: AssetImage(image),
          ),
          const SizedBox(height: KSize.spaceBtwItems),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: KSize.spaceBtwItems),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
