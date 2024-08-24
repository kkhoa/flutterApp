import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:webapp/common/widgets/texts/k_brand_title_text.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/size.dart';

class KBrandTitleWithVerifiedIcon extends StatelessWidget {
  const KBrandTitleWithVerifiedIcon({
    super.key,
    this.textColor,
    this.maxLines = 1,
    required this.title,
    this.iconColor = KColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSize.small,
  });

  final Color? textColor;
  final int maxLines;
  final String title;
  final Color iconColor;
  final TextAlign textAlign;
  final TextSize brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: KBrandTitleText(
            title: title,
            maxLines: maxLines,
            textAlign: textAlign,
            color: textColor,
            brandTextSize: brandTextSize, // Pass brandTextSize to KBrandTitleText
          ),
        ),
        const SizedBox(width: KSize.sizeXs),
        Icon(
          Iconsax.verify5,
          color: iconColor,
          size: KSize.iconSm,
        ),
      ],
    );
  }
}
