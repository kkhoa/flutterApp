
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/size.dart';
import '../../../utils/helpers/helper_functions.dart';

class KVerticalImageText extends StatelessWidget {

  const KVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor=KColors.white,
    this.backgroundColor,
    this.ontap,
  });

  final String image;
  final String title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    final dark =KHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: ontap,
      child :Padding(
        padding: const EdgeInsets.only(right: KSize.spaceBtwItems),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Circular icon
            Container(
              width: 60,
              height: 60,
              padding: const EdgeInsets.all(KSize.sizeSm),
              decoration: BoxDecoration(
                color: backgroundColor ?? ( dark ?KColors.black:KColors.white), // Use default color if none provided
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                  color: dark ?KColors.light:KColors.dark,
                ),
              ),
            ),
            // Text
            const SizedBox(height: KSize.spaceBtwItems / 2),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context).textTheme.labelMedium!.apply(
                  color: textColor,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
