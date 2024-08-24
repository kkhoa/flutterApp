import 'package:flutter/material.dart';
import 'package:webapp/common/widgets/appbar/appbar.dart';
import 'package:webapp/features/shop/screens/product_review/widget/rating_progress_indicator.dart';
import 'package:webapp/features/shop/screens/product_review/widget/user_review_cart.dart';
import 'package:webapp/utils/constants/size.dart';

import '../../../../common/widgets/ratings/rating_indicator.dart';


class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: const KAppBar(
        title: Text('Reviews & Rating'),
        showBackArrow: true,
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(KSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                'Đánh giá và xếp hạng sản phẩm',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: KSize.spaceBtwItems),
              const KOverallProductRating(),
              const KRatingBarIndicator(rating: 5,),
              Text('130',style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(height: KSize.spaceBtwSections,),
              const UserReviewCart(),
              const UserReviewCart(),
              const UserReviewCart(),
              const UserReviewCart(),
            ],
          ),
        ),
      ),
    );
  }
}
