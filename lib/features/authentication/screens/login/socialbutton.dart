

import 'package:flutter/material.dart';
import 'package:webapp/utils/constants/colors.dart';

import '../../../../utils/constants/image_string.dart';
import '../../../../utils/constants/size.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: KColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {
              // Handle Google button press
            },
            icon: Image.asset(
              KImages.google,
              width: KSize.iconMd,
              height: KSize.iconMd,
            ),
          ),
        ),
        const SizedBox(width: KSize.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: KColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {
              // Handle Facebook button press
            },
            icon: Image.asset(
              KImages.facebook,
              width: KSize.iconMd,
              height: KSize.iconMd,
            ),
          ),
        ),
      ],
    );
  }
}
