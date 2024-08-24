import 'package:flutter/material.dart';
import 'package:webapp/common/widgets/appbar/appbar.dart';
import 'package:webapp/utils/constants/size.dart';

import '../../../../common/widgets/product_cart/sortable/sortable_product.dart';

class AllProduct extends StatelessWidget {
  const AllProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: KAppBar(
        title: Text('Sản phẩm bán chạy'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(KSize.defaultSpace),
          child: SortableProducts(),
        ),
      ),
    );
  }
}
