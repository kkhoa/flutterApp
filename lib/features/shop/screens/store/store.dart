import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webapp/common/widgets/appbar/appbar.dart';
import 'package:webapp/common/widgets/appbar/tabbar.dart';
import 'package:webapp/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:webapp/common/widgets/layouts/grid_layout.dart';
import 'package:webapp/common/widgets/product_cart/cart/cart_menu_icon.dart';
import 'package:webapp/common/widgets/texts/section_heading.dart';
import 'package:webapp/features/shop/screens/brand/all_brand.dart';
import 'package:webapp/features/shop/screens/store/widgets/category_tab.dart';
import 'package:webapp/utils/constants/colors.dart';
import 'package:webapp/utils/constants/size.dart';
import 'package:webapp/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/brands/brand_cart.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        appBar: KAppBar(
            showBackArrow: false, // No back arrow
            leadingIcon: null,    // No leading icon
          title: Text('Cửa hàng',style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            KCartCounterIcon(onPressed: (){}),
          ],
        ),
        body: NestedScrollView(headerSliverBuilder:(_,innerBoxIsScrolled){
          return[
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: KHelperFunctions.isDarkMode(context)?KColors.black:KColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(KSize.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    const SizedBox(height: KSize.defaultSpace,),
                    const KSearchContainer(text: 'Tìm trong cửa hàng',showBorder: true,padding: EdgeInsets.zero),
                    const SizedBox(height: KSize.spaceBtwSections),
                    /// brand
                    KSectionHeading(title: 'Các Thương Hiệu',showActionButton: true,onPressed:()=>Get.to(()=>const AllBrandScreens()) ,),
                    const SizedBox(height: KSize.spaceBtwItems/1.5),
      
                  KGridLayout(itemCount: 4,mainAxisExtent: 80, itemBuilder: (_,index){
                    return  const KBrandCard(showBorder: false,);
                  })
                  ],
                ),
              ),
              bottom: const KTabBar(
                tabs:[

                    Tab(child: Text('Tivi')),
                    Tab(child: Text(' Tủ lanh')),
                    Tab(child: Text('Máy giặt')),
                    Tab(child: Text('Máy lạnh')),
                    Tab(child: Text('Quạt')),
                    Tab(child: Text('Máy lọc không khi ')),
                    Tab(child: Text('Máy tắm nóng')),
                    Tab(child: Text('Máy xay')),
                    Tab(child: Text('Bếp ')),
                    Tab(child: Text('Máy lọc nước')),
                ],
              ),
            ),
          ];
        }, body:const TabBarView(
          children: [
            KCategoryTab(),
            KCategoryTab(),
            KCategoryTab(),
            KCategoryTab(),
            KCategoryTab(),
    ],),
      ),
    ));
  }
}
