import 'package:flutter/material.dart';
import 'package:webapp/common/widgets/layouts/grid_layout.dart';
import 'package:webapp/common/widgets/product_cart/product_card_vertical.dart';
import 'package:webapp/common/widgets/texts/section_heading.dart';

import '../../../../../common/widgets/brands/brand_show_case.dart';
import '../../../../../utils/constants/image_string.dart';
import '../../../../../utils/constants/size.dart';

class KCategoryTab extends StatelessWidget {
  const KCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(KSize.defaultSpace),
          child: Column(
            children: [
              const KBrandShowCase(
                images: [
                  KImages.productImage1,
                  KImages.productImage2,
                  KImages.productImage3,
                ],
              ),
              const SizedBox(height: KSize.spaceBtwItems),
              const KBrandShowCase(
                images: [
                  KImages.productImage4,
                  KImages.productImage5,
                  KImages.productImage6,
                ],
              ),
              const SizedBox(height: KSize.spaceBtwItems),
              KSectionHeading(
                title: 'Có thể bạn sẽ thích',
                showActionButton: true,
                onPressed: () {},
              ),
              const SizedBox(height: KSize.spaceBtwItems),
              KGridLayout(
                itemCount: 8,
                itemBuilder: (_, index) => const KProductCardVertical(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
