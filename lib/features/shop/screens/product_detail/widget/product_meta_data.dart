import 'package:flutter/material.dart';
import 'package:webapp/common/widgets/image/k_circular_image.dart';
import 'package:webapp/common/widgets/texts/k_brand_title_text_with_verified_icon.dart';
import 'package:webapp/common/widgets/texts/product_price_text.dart';
import 'package:webapp/common/widgets/texts/product_title_text.dart';
import 'package:webapp/utils/constants/enums.dart';
import 'package:webapp/utils/constants/image_string.dart';
import 'package:webapp/utils/helpers/helper_functions.dart';

import '../../../../../common/widgets/image/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/size.dart';

class KProductMetaData extends StatelessWidget {
  const KProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            KRoundedContainer(
              radius: KSize.sizeSm,
              backgroundColor: KColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                horizontal: KSize.sizeSm,
                vertical: KSize.sizeXs,
              ),
              child: Text(
                '25%',
                style: Theme.of(context).textTheme.labelLarge!.apply(
                  color: KColors.black,
                ),
              ),
            ),
            const SizedBox(width: KSize.spaceBtwItems),
            Text(
              '3.500.000đ',
              style: Theme.of(context).textTheme.titleMedium!.apply(
                decoration: TextDecoration.lineThrough,
              ),
            ),
            const SizedBox(width: KSize.spaceBtwItems),
            const KProductPriceText(price: '1.750.000', isLarge: true),
          ],
        ),
        const SizedBox(height: KSize.spaceBtwItems / 1.5),
        const KProductTitleText(title: 'Tivi siu cap vip pro'),
        const SizedBox(height: KSize.spaceBtwItems / 1.5),

        Row(
          children: [
            const KProductTitleText(title: 'Tình trạng'),
            const SizedBox(width: KSize.spaceBtwItems),
            Text(
              'Còn hàng',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),

        const SizedBox(height: KSize.spaceBtwItems / 1.5),
        Row(
          children: [
            KCircularImage(
              image: KImages.tvIcon,
              width: 32,
              height: 32,
              overlayColor: dark ? KColors.white : KColors.dark,
            ),
            const SizedBox(width: KSize.spaceBtwItems / 2),
            const KBrandTitleWithVerifiedIcon(
              title: 'Tivi',
              brandTextSize: TextSize.medium,
            ),
          ],
        ),
      ],
    );
  }
}
