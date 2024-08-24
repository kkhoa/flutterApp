import 'package:flutter/material.dart';
import 'package:webapp/common/widgets/image/rounded_container.dart';
import 'package:webapp/common/widgets/image/k_circular_image.dart';
import 'package:webapp/common/widgets/texts/k_brand_title_text_with_verified_icon.dart';
import 'package:webapp/utils/constants/image_string.dart';
import 'package:webapp/utils/constants/size.dart';
import 'package:webapp/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';

class KBrandCard extends StatelessWidget {
  final void Function()? onTap; // Optional callback for tap events
  final bool showBorder; // Required parameter to control border visibility

  const KBrandCard({
    this.onTap,
    super.key,
    required this.showBorder,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = KHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap, // Trigger callback if provided
      child: KRoundedContainer(
        padding: const EdgeInsets.all(KSize.sizeSm),
        showBorder: showBorder, // Apply border based on the parameter
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            Flexible(
              child: KCircularImage(
                isNetworkImage: false,
                image: KImages.fanIcon,
                backgroundColor: Colors.transparent,
                overlayColor: isDarkMode ? KColors.white : KColors.black,
              ),
            ),
            const SizedBox(width: KSize.spaceBtwItems / 2),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const KBrandTitleWithVerifiedIcon(
                    title: 'TIVI',
                    brandTextSize: TextSize.large,
                  ),
                  Text(
                    '256 sản phẩm',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
