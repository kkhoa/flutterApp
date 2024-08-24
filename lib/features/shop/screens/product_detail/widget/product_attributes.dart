import 'package:flutter/material.dart';
import 'package:webapp/common/widgets/image/rounded_container.dart';
import 'package:webapp/common/widgets/texts/product_price_text.dart';
import 'package:webapp/common/widgets/texts/product_title_text.dart';
import 'package:webapp/common/widgets/texts/section_heading.dart';
import 'package:webapp/utils/constants/colors.dart';
import '../../../../../common/widgets/chips/choice_chip.dart';
import '../../../../../utils/constants/size.dart';
import 'package:webapp/utils/helpers/helper_functions.dart';

class KProductAttributes extends StatelessWidget {
  const KProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        KRoundedContainer(
          padding: const EdgeInsets.all(KSize.sizeMd),
          backgroundColor: dark ? KColors.darkerGrey : KColors.grey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const KSectionHeading(title: 'Giảm giá', showActionButton: false),
                  const SizedBox(width: KSize.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const KProductTitleText(title: 'Loại phiên bản', smallSize: true),
                      const SizedBox(height: KSize.spaceBtwItems),
                      Row(
                        children: [
                          Text(
                            '2.000.000đ',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: KSize.spaceBtwItems),
                          const KProductPriceText(price: '20'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: KSize.spaceBtwItems),
              Row(
                children: [
                  const KProductTitleText(title: 'Tình trạng', smallSize: true),
                  const SizedBox(width: KSize.spaceBtwItems),
                  Text(
                    'Còn hàng',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
              const SizedBox(height: KSize.spaceBtwItems),
              const KProductTitleText(
                title: 'MÔ tả sản phẩm và có thể tối đa mô tả 4 dòng',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: KSize.spaceBtwItems),
        /// attributes
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const KSectionHeading(title: 'Màu',showActionButton: false,),
            const SizedBox(height: KSize.spaceBtwItems/2,),
           Wrap(
             children: [
               KChoiceChip(text: 'Green', selected: false,onSelected: (value){},),
               KChoiceChip(text: 'Blue', selected: true,onSelected:(value){} ,),
               KChoiceChip(text: 'Yellow', selected: false,  onSelected: (value){},),
             ],
           )
          ],
        ),
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const KSectionHeading(title: 'Kích cỡ'),
            const SizedBox(height: KSize.spaceBtwItems/2,),
            Wrap(
              children: [
                KChoiceChip(text: '90', selected: false,onSelected: (value){}),
                KChoiceChip(text: '100', selected: true,onSelected: (value){}),
                KChoiceChip(text: '110', selected: false,onSelected: (value){}),
              ],
            )
          ],
        ),
      ],
    );
  }
}


