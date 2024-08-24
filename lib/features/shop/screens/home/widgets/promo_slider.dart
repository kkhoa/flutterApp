import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webapp/features/shop/controllers/home_controller.dart';
import 'package:webapp/utils/constants/colors.dart';

import '../../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../../common/widgets/image/k_rounded_image.dart';
import '../../../../../utils/constants/size.dart';

class KPromoSlider extends StatelessWidget {
  final List<String> banners;

  const KPromoSlider({super.key, required this.banners});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
          items: banners.map((url) => KRoundedImage(imageUrl: url)).toList(),
        ),
        const SizedBox(height: KSize.spaceBtwItems),
        Center(
          child: Obx(
                () => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < banners.length; i++)
                  KCircularContainer(
                    width: 20,
                    height: 5,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor: controller.carousalCurrentIndex.value == i
                        ? KColors.primary
                        : KColors.grey,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
