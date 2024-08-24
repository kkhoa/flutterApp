import 'package:flutter/material.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/product_cart/cart/cart_menu_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/texts_string.dart';

class KHomeAppBar extends StatelessWidget {
  const KHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return KAppBar(
      showBackArrow: false, // No back arrow
      leadingIcon: null,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            KTexts.homeAppbarTitle,
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: KColors.grey,
            ),
          ),
          Text(
            KTexts.homeAppbarSubTitle,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              color: KColors.white,
            ),
          ),
        ],
      ),
      actions: [
        KCartCounterIcon(onPressed: (){}, iconColor: KColors.white,),
      ], // Thêm dòng này để xóa mũi tên "Back"
    );
  }
}