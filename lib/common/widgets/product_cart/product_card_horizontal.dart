import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:webapp/common/widgets/image/k_rounded_image.dart';
import 'package:webapp/common/widgets/image/rounded_container.dart';
import 'package:webapp/common/widgets/texts/k_brand_title_text_with_verified_icon.dart';
import 'package:webapp/common/widgets/texts/product_price_text.dart';
import 'package:webapp/common/widgets/texts/product_title_text.dart';
import 'package:webapp/utils/constants/image_string.dart';
import 'package:webapp/utils/constants/size.dart';
import 'package:webapp/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';
import '../../icons/circular_icon.dart';

class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(KSize.productImageRadius),
        color: dark ? KColors.darkerGrey : KColors.lightContainer,
      ),
      child: Row(
        children: [
          /// Thumbnail
          KRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(KSize.sizeSm),
            backgroundColor: dark ? KColors.dark : KColors.light,
            child: Stack(
              children: [
                /// Thumbnail Image
                const SizedBox(
                  height: 120,
                  width: 120,
                  child: KRoundedImage(
                    imageUrl: KImages.productImage1,
                    applyImageRadius: true,
                  ),
                ),

                /// Discount Badge
                Positioned(
                  top: 12,
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

                /// Favorite Icon
                const Positioned(
                  top: KSize.sizeSm,
                  right: KSize.sizeSm,
                  child: KCircularIcon(
                    icon: Iconsax.heart5,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),

          /// Details Section
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: KSize.sizeSm, left: KSize.sizeSm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const KProductTitleText(
                    title: 'Tivi siêu cấp vip pro',
                    smallSize: true,
                  ),
                  const SizedBox(height: KSize.spaceBtwItems / 2),
                  const KBrandTitleWithVerifiedIcon(title: 'Tivi'),
                  const SizedBox(height: KSize.spaceBtwItems / 2),

                  const Spacer(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(
                        child: KProductPriceText(price: '2.500.000'),
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
          ),
        ],
      ),
    );
  }
}
