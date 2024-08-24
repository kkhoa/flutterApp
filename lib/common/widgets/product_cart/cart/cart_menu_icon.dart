import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:webapp/features/shop/screens/cart/cart.dart';

import '../../../../utils/constants/colors.dart';

class KCartCounterIcon extends StatelessWidget {
  const KCartCounterIcon({
    super.key, required this.onPressed, this.iconColor,
  });
  final VoidCallback onPressed;
  final Color? iconColor; // Make this parameter nullable to handle cases where it's not provided

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none, // Ensure the badge is not clipped
      children: [
        IconButton(
          onPressed: ()=>Get.to(()=>const CartScreen()), // Use the provided onPressed callback
          icon: Icon(Iconsax.shopping_bag, color: iconColor),
        ),
        Positioned(
          right: 0,
          top: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: KColors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: KColors.white,
                  fontSize: 12, // Use fixed fontSize
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
