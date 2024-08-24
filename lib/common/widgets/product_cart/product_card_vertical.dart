import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:webapp/features/shop/screens/product_detail/product_detail.dart';
import 'package:webapp/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_string.dart';
import '../../../utils/constants/size.dart';
import '../../icons/circular_icon.dart';
import '../../styles/shadows.dart';
import '../image/k_rounded_image.dart';
import '../image/rounded_container.dart';
import '../texts/k_brand_title_text_with_verified_icon.dart';
import '../texts/product_price_text.dart';
import '../texts/product_title_text.dart';

class KProductCardVertical extends StatelessWidget {
  const KProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: ()=>Get.to(()=>const ProductDetailScreen()),
      child: Container(
          width: 180,
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            boxShadow: [KShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(KSize.productImageRadius),
            color: dark ? KColors.darkerGrey : KColors.white,
          ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            KRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(KSize.sizeSm),
              backgroundColor: dark ? KColors.dark : KColors.light,
              radius: KSize.productImageRadius,
              child: Stack(
                children: [
                  const KRoundedImage(
                    imageUrl: KImages.productImage1,
                    applyImageRadius: true,
                  ),
                  Positioned(
                    top: KSize.sizeSm,
                    left: KSize.sizeSm,
                    child: KRoundedContainer(
                      radius: KSize.sizeSm,
                      backgroundColor: KColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: KSize.sizeSm,
                        vertical: KSize.sizeXs,
                      ),
                      child: Text(
                        '25%',
                        style: Theme.of(context).textTheme.labelLarge?.apply(
                          color: KColors.black,
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: KSize.sizeSm,
                    right: KSize.sizeSm,
                    child: KCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                      size: 22,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: KSize.spaceBtwItems / 2),
            const Padding(
              padding: EdgeInsets.only(left: KSize.sizeSm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  KProductTitleText(
                    title: 'Tvi siu cấp vip bro', smallSize: true,
                  ),
                  SizedBox(height: KSize.spaceBtwItems / 2),
                  KBrandTitleWithVerifiedIcon(title: 'TIVI'),
                ],
              ),
            ),
            const Spacer(),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: KSize.sizeSm),
                  child: KProductPriceText(price: '2.500.000',isLarge: true),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: KColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(KSize.cardRadiusMd),
                      bottomRight: Radius.circular(KSize.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                    width: KSize.iconLg,
                    height: KSize.iconLg,
                    child: Center(
                      child: Icon(Iconsax.add, color: KColors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
