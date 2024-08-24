import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:webapp/common/icons/circular_icon.dart';
import 'package:webapp/common/widgets/appbar/appbar.dart';
import 'package:webapp/common/widgets/layouts/grid_layout.dart';
import 'package:webapp/common/widgets/product_cart/product_card_vertical.dart';
import 'package:webapp/features/shop/screens/home/home.dart';
import 'package:webapp/utils/constants/size.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KAppBar(
        showBackArrow: false, // No back arrow
        leadingIcon: null,
        title: Text('Sản phẩm bạn thích',style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          KCircularIcon(icon: Iconsax.add,onPress: ()=>Get.to(const HomeScreen()),)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(KSize.defaultSpace),
          child: Column(
            children: [
              KGridLayout(itemCount: 6, itemBuilder: (_,index)=>const KProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
