
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_string.dart';
import '../../../../utils/constants/size.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../image/k_rounded_image.dart';
import '../../texts/k_brand_title_text_with_verified_icon.dart';
import '../../texts/product_title_text.dart';

class KCartItem extends StatelessWidget {
  const KCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        KRoundedImage(imageUrl: KImages.productImage2,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(KSize.sizeSm),
          backgroundColor: KHelperFunctions.isDarkMode(context)?KColors.darkerGrey:KColors.light,),
        const SizedBox(width: KSize.spaceBtwItems ,),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const KBrandTitleWithVerifiedIcon(title: 'Tivi'),
              const Flexible(child: KProductTitleText(title: 'Tvi siu cap pro',maxLines: 1,)),

              Text.rich(
                  TextSpan(
                      children:[
                        TextSpan(text: 'Màu',style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: 'Hồng',style: Theme.of(context).textTheme.bodyLarge),
                        TextSpan(text: 'kích thước',style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: 'super vip',style: Theme.of(context).textTheme.bodyLarge),
                      ]
                  )
              )
            ],
          ),
        )
      ],
    );
  }
}
