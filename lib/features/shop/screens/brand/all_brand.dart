import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webapp/common/widgets/appbar/appbar.dart';
import 'package:webapp/common/widgets/brands/brand_cart.dart';
import 'package:webapp/common/widgets/layouts/grid_layout.dart';
import 'package:webapp/common/widgets/texts/section_heading.dart';
import 'package:webapp/features/shop/screens/brand/brand_product.dart';
import 'package:webapp/utils/constants/size.dart';


class AllBrandScreens extends StatelessWidget {
  const AllBrandScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const KAppBar(title: Text(' Các Thương hiệu')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets. all(KSize.defaultSpace),
          child: Column(
            children: [
              const KSectionHeading(title: 'Các thương hiệu',showActionButton: false,),
              const SizedBox(height: KSize.spaceBtwItems,),
              /// brands
              KGridLayout(itemCount: 10,mainAxisExtent: 80, itemBuilder: (context,index)=>KBrandCard(showBorder: true,onTap: ()=>Get.to(()=>const BrandProduct()),))
            ],
          ),
        ),
      ),
    );
  }
}
