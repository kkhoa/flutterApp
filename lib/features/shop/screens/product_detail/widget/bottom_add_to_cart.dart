import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:webapp/common/icons/circular_icon.dart';
import 'package:webapp/utils/constants/colors.dart';
import 'package:webapp/utils/constants/size.dart';
import 'package:webapp/utils/helpers/helper_functions.dart';

class KBottomAddToCart extends StatelessWidget {
  const KBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: KSize.defaultSpace,
        vertical: KSize.defaultSpace / 2,
      ),
      decoration: BoxDecoration(
        color: dark ? KColors.darkerGrey : KColors.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(KSize.cardRadiusLg),
          topRight: Radius.circular(KSize.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const KCircularIcon(
                icon: Iconsax.minus,
                backgroundColor: KColors.darkGrey,
                width: 40,
                height: 40,
                color: KColors.white,
              ),
              const SizedBox(width: KSize.spaceBtwItems),
              Text(
                '2',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(width: KSize.spaceBtwItems),
              const KCircularIcon(
                icon: Iconsax.add,
                backgroundColor: KColors.black,
                width: 40,
                height: 40,
                color: KColors.white,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              // Add your onPressed functionality here
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(KSize.sizeMd),
              backgroundColor: KColors.black,
              side: const BorderSide(color: KColors.black),
            ),
            child: const Text('Thêm vào giỏ hàng'),
          ),
        ],
      ),
    );
  }
}
