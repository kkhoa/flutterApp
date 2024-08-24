
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/size.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../../icons/circular_icon.dart';

class KProductAddAndRemove extends StatelessWidget {
  const KProductAddAndRemove({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        KCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: KSize.sizeMd,
          color: KHelperFunctions.isDarkMode(context) ? KColors.white : KColors.black,
          backgroundColor: KHelperFunctions.isDarkMode(context) ? KColors.darkerGrey : KColors.light,
        ),
        const SizedBox(width: KSize.spaceBtwItems),
        Text(
          '2', // This is the quantity, it can be dynamic
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(width: KSize.spaceBtwItems),
        const KCircularIcon(
            icon: Iconsax.add,
            width: 32,
            height: 32,
            size: KSize.sizeMd,
            color: KColors.white,
            backgroundColor:KColors.primary
        ),
      ],
    );
  }
}
