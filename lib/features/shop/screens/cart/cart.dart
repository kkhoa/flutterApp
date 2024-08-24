import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webapp/common/widgets/appbar/appbar.dart';
import 'package:webapp/features/shop/screens/checkout/checkout.dart';
import 'package:webapp/utils/constants/size.dart';

import 'cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KAppBar(
        title: Text(
          'Giỏ hàng',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(KSize.defaultSpace),
        child: KCartItems(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(KSize.defaultSpace),
        child: ElevatedButton(
          onPressed: () =>Get.to(()=>const CheckoutScreen()),
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          child: const Text('Thanh toán'),
        ),
      ),
    );
  }
}
