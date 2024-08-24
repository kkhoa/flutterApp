import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/size.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../image/rounded_container.dart';
import 'brand_cart.dart';

class KBrandShowCase extends StatelessWidget {
  final List<String> images;

  const KBrandShowCase({
    super.key,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return KRoundedContainer(
      showBorder: true,
      borderColor: KColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: KSize.spaceBtwItems),
      padding: const EdgeInsets.only(bottom: KSize.spaceBtwItems),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const KBrandCard(showBorder: false),
          const SizedBox(height: KSize.spaceBtwItems),
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, BuildContext context) {
    return Expanded(
      child: KRoundedContainer(
        height: 100,
        backgroundColor: KHelperFunctions.isDarkMode(context)
            ? KColors.darkerGrey
            : KColors.white,
        margin: const EdgeInsets.only(right: KSize.sizeSm),
        padding: const EdgeInsets.all(KSize.sizeMd),
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(image), // Use the provided image path
        ),
      ),
    );
  }
}