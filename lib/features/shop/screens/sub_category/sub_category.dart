import 'package:flutter/material.dart';
import 'package:webapp/common/widgets/appbar/appbar.dart';
import 'package:webapp/common/widgets/image/k_rounded_image.dart';
import 'package:webapp/common/widgets/texts/section_heading.dart';
import 'package:webapp/utils/constants/image_string.dart';
import 'package:webapp/utils/constants/size.dart';

import '../../../../common/widgets/product_cart/product_card_horizontal.dart';

class SubCategoryScreen extends StatelessWidget {
  const SubCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const KAppBar(title: Text('Tivi'),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(KSize.defaultSpace),
          child: Column(
            children: [
              const KRoundedImage(width:double.infinity,imageUrl:  KImages.promoBanner1,applyImageRadius: true,),
              const SizedBox(height: KSize.spaceBtwSections),
              /// syb categories
              Column(
                children: [
                    /// heading
                  KSectionHeading(title: 'Tivi bự',onPressed: (){},),
                  const SizedBox(height: KSize.spaceBtwItems/2,),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder:(context,index) =>const SizedBox(width: KSize.spaceBtwItems,) ,
                        itemBuilder:(context,index) =>const ProductCardHorizontal()),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
