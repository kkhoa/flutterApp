
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webapp/features/shop/screens/sub_category/sub_category.dart';

import '../../../../../common/widgets/image_text_widget/vertical_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_string.dart';

class KHomeCategories extends StatelessWidget {
  const KHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100, // Define a height for the horizontal list
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6, // Number of categories
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return  KVerticalImageText(
            image: KImages.fanIcon, // Replace with actual image asset path
            title: 'Tivi',
            ontap: ()=>Get.to(()=>const SubCategoryScreen()),
            textColor: KColors.white,
            backgroundColor: KColors.grey, // Optional: Provide a background color if needed
          );
        },
      ),
    );
  }
}
