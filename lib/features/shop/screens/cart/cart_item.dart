import 'package:flutter/material.dart';

import '../../../../common/widgets/product_cart/cart/add_remove_button.dart';
import '../../../../common/widgets/product_cart/cart/cart_item.dart';
import '../../../../common/widgets/texts/product_price_text.dart';
import '../../../../utils/constants/size.dart';

class KCartItems extends StatelessWidget {
  const KCartItems({
    this.showAddRemoveButtons = true, super.key,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(height: KSize.spaceBtwSections),
      itemCount: 2,
      itemBuilder: (_, index) => Column(
        children: [
          const KCartItem(),
          if (showAddRemoveButtons) const SizedBox(height: KSize.spaceBtwItems),
          if (showAddRemoveButtons) const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(right: KSize.sizeLg * 1.5),
                child: KProductAddAndRemove(),
              ),
              KProductPriceText(price: '2.500.000'),
            ],
          ),
        ],
      ),
    );
  }
}
