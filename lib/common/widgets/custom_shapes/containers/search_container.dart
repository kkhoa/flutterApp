
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/size.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';

class KSearchContainer extends StatelessWidget {
  const   KSearchContainer({
    super.key, required this.text, this.icon=Iconsax.search_normal,  this.showBackground=true,  this.showBorder=true, this.padding= const EdgeInsets.symmetric(horizontal: KSize.defaultSpace),
  });
  final String text;
  final IconData ? icon;
  final bool showBackground,showBorder;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    final dark= KHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KSize.defaultSpace),
      child: Container(
        width: KDeviceUtils.getScreenWidth(context), // Ensure this returns a valid width
        padding: const EdgeInsets.all(KSize.sizeMd),
        decoration: BoxDecoration(
          color:  showBackground ? dark? KColors.dark:KColors.light: Colors.transparent,
          borderRadius: BorderRadius.circular(KSize.cardRadiusLg),
          border: showBorder? Border.all(color: KColors.grey):null,
        ),
        child: Row(
          children: [
            Icon(icon, color: KColors.darkerGrey),
            const SizedBox(width: KSize.spaceBtwItems),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall, // Ensure this text style exists
            ),
          ],
        ),
      ),
    );
  }
}
