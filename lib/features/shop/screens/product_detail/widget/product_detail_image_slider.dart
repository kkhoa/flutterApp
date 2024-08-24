
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:webapp/common/widgets/image/k_rounded_image.dart';
import 'package:webapp/utils/helpers/helper_functions.dart';

import '../../../../../common/icons/circular_icon.dart';
import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_string.dart';
import '../../../../../utils/constants/size.dart';

class KProdcutImageSlider extends StatelessWidget {
  const KProdcutImageSlider({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final dark=KHelperFunctions.isDarkMode(context);
    return KCurvedEdgeWidget(
      child: Container(
        color: dark ? KColors.darkerGrey : KColors.light,
        child: Stack(
          children: [
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(KSize.productImageRadius * 2),
                child: Center(
                  child: Image(image: AssetImage(KImages.productImage1)),
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 30,
              left: KSize.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (_, __) => const SizedBox(width: KSize.spaceBtwItems),
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (_, index) => KRoundedImage(
                    width: 80,
                    backgroundColor: dark ? KColors.dark : KColors.white,
                    border: Border.all(color: KColors.primary),
                    padding: const EdgeInsets.all(KSize.sizeSm),
                    imageUrl: KImages.productImage2,
                  ),
                ),
              ),
            ),

            const KAppBar(
              showBackArrow: true,
              actions: [
                KCircularIcon(icon: Iconsax.heart5, color: Colors.red,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
