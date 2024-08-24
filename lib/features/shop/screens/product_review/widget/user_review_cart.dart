import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:webapp/common/widgets/image/rounded_container.dart';
import 'package:webapp/common/widgets/ratings/rating_indicator.dart';
import 'package:webapp/utils/constants/colors.dart';
import 'package:webapp/utils/constants/image_string.dart';
import 'package:webapp/utils/constants/size.dart';
import 'package:webapp/utils/helpers/helper_functions.dart';

class UserReviewCart extends StatelessWidget {
  const UserReviewCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(KImages.productImage2),
                ),
                const SizedBox(width: KSize.spaceBtwItems),
                Text(
                  'Khoa dz',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(height: KSize.spaceBtwItems),
        Row(
          children: [
            const KRatingBarIndicator(rating: 5),
            const SizedBox(width: KSize.spaceBtwItems),
            Text(
              '16-8-2024',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(height: KSize.spaceBtwItems),
        const ReadMoreText(
          'Sản phẩm này sử dụng như Sunsilk giá lại hợp lý. Ước gì tôi biết đến nó sớm hơn.',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: 'Show less',
          trimCollapsedText: 'Show more',
          moreStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: KColors.primary,
          ),
          lessStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: KColors.primary,
          ),
        ),
        const SizedBox(height: KSize.spaceBtwItems),
        KRoundedContainer(
          backgroundColor: dark?KColors.darkerGrey:KColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(KSize.sizeMd),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('K-Store',style: Theme.of(context).textTheme.bodyLarge,),
                    const SizedBox(width: KSize.spaceBtwItems),
                    Text('16-8-2024',style: Theme.of(context).textTheme.bodyMedium,),
                  ],
                ),
                const SizedBox(height: KSize.spaceBtwSections,),
                const ReadMoreText(
                  'Sản phẩm này sử dụng như Sunsilk giá lại hợp lý. Ước gì tôi biết đến nó sớm hơn.',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: 'Show less',
                  trimCollapsedText: 'Show more',
                  moreStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: KColors.primary,
                  ),
                  lessStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: KColors.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: KSize.spaceBtwSections,),
      ],
    );
  }
}
