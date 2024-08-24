import 'package:flutter/material.dart';
import 'package:webapp/common/widgets/appbar/appbar.dart';
import 'package:webapp/common/widgets/brands/brand_cart.dart';
import 'package:webapp/common/widgets/product_cart/sortable/sortable_product.dart';
import 'package:webapp/utils/constants/size.dart';

class BrandProduct extends StatelessWidget {
  const BrandProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: KAppBar(title: Text('Tivi')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(KSize.defaultSpace),
        child: Column(
          children: [
            KBrandCard(showBorder: true),
            SizedBox(height: KSize.spaceBtwSections,),
            SortableProducts()
          ],
        ),
      ),
    );
  }
}
