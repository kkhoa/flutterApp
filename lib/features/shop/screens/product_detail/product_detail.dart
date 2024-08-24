import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:webapp/common/widgets/texts/section_heading.dart';
import 'package:webapp/features/shop/screens/product_detail/widget/bottom_add_to_cart.dart';
import 'package:webapp/features/shop/screens/product_detail/widget/product_attributes.dart';
import 'package:webapp/features/shop/screens/product_detail/widget/product_detail_image_slider.dart';
import 'package:webapp/features/shop/screens/product_detail/widget/product_meta_data.dart';
import 'package:webapp/features/shop/screens/product_detail/widget/rating_share_widget.dart';
import 'package:webapp/features/shop/screens/product_review/product_review.dart';
import 'package:webapp/utils/constants/size.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const KBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // product image slider
            const KProdcutImageSlider(), // Corrected widget name

            // product detail
            Padding(
              padding: const EdgeInsets.only(
                right: KSize.defaultSpace,
                left: KSize.defaultSpace,
                bottom: KSize.defaultSpace,
              ),
              child: Column(
                children: [
                  // rating and share button
                  const KRatingandShare(),

                  // price title stock, brand
                  const KProductMetaData(),

                  // attributes
                  const KProductAttributes(),
                  const SizedBox(height: KSize.spaceBtwSections),

                  // checkout
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Hành động khi nhấn nút
                      },
                      child: const Text('Mua Hàng'),
                    ),
                  ),
                  const SizedBox(height: KSize.spaceBtwSections),

                  // description
                  const KSectionHeading(
                    title: 'Mô tả sản phẩm',
                    showActionButton: false,
                  ),
                  const SizedBox(height: KSize.spaceBtwItems),

                  // Mô tả sản phẩm với ReadMoreText
                  const ReadMoreText(
                    'Sản phẩm siêu cấp VIP, thuộc dòng cao cấp của thương hiệu Sony. Đây là sản phẩm với thiết kế hiện đại, chất lượng vượt trội, mang lại trải nghiệm tuyệt vời cho người dùng...',
                    trimLines: 2,
                    colorClickableText: Colors.blue,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Xem thêm',
                    trimExpandedText: 'Thu gọn',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  // review
                  const Divider(),
                  const SizedBox(height: KSize.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const KSectionHeading(title: 'Đánh giá(199)',showActionButton: false,),
                      IconButton(
                        icon: const Icon(Iconsax.arrow_right_3), // Example icon
                        onPressed: ()=>Get.to(()=>const ProductReviewScreen()),
                      ),
                    ],
                  ),
                  const SizedBox(height: KSize.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
