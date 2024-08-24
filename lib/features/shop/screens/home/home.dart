import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webapp/common/widgets/layouts/grid_layout.dart';
import 'package:webapp/common/widgets/product_cart/product_card_vertical.dart';
import 'package:webapp/features/shop/screens/all_product/all_product.dart';
import 'package:webapp/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:webapp/features/shop/screens/home/widgets/home_categories.dart';
import 'package:webapp/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:webapp/utils/constants/size.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/image_string.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const KPrimaryHeaderContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  KHomeAppBar(),
                  SizedBox(height: KSize.spaceBtwSections), // No const here
                  KSearchContainer(text: 'Tìm sản phẩm bạn thích'),
                  SizedBox(height: KSize.spaceBtwSections), // No const here
                  Padding(
                    padding: EdgeInsets.only(left: KSize.defaultSpace),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        KSectionHeading(
                          title: 'Danh mục sản phẩm',
                          buttonTitle: 'Xem tất cả',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(height: KSize.spaceBtwItems), // No const here
                        KHomeCategories(),
                      ],
                    ),
                  ),
                  SizedBox(height: KSize.spaceBtwSections), // No const here
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(KSize.defaultSpace),
              child: KPromoSlider(
                banners: [
                  KImages.promoBanner1,
                  KImages.promoBanner2,
                  KImages.promoBanner3,
                ],
              ),
            ),
            const SizedBox(height: KSize.spaceBtwSections), // No const here

            KSectionHeading(title: 'Sản phẩm bán chạy',onPressed:  ()=>Get.to(()=>const AllProduct())),
            const SizedBox(height: KSize.spaceBtwItems,),
            KGridLayout(
              itemCount: 6,
              itemBuilder: (_, index) => const KProductCardVertical(), // No const here
            ),
          ],
        ),
      ),
    );
  }
}
