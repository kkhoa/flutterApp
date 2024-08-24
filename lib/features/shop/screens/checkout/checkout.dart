import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webapp/common/widgets/image/rounded_container.dart';
import 'package:webapp/common/widgets/success_screen/success_screen.dart';
import 'package:webapp/features/shop/screens/cart/cart_item.dart';
import 'package:webapp/features/shop/screens/checkout/widget/billing_address_section.dart';
import 'package:webapp/features/shop/screens/checkout/widget/billing_amount_sections.dart';
import 'package:webapp/features/shop/screens/checkout/widget/billing_payment_sections.dart';
import 'package:webapp/navigation_menu.dart';
import 'package:webapp/utils/constants/colors.dart';
import 'package:webapp/utils/constants/image_string.dart';
import 'package:webapp/utils/constants/size.dart';
import 'package:webapp/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/product_cart/cart/coupon_widget.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: KAppBar(
        title: Text(
          'Chi tiết đơn hàng',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(KSize.defaultSpace),
          child: Column(
            children: [
              const KCartItems(showAddRemoveButtons: false),
              const SizedBox(height: KSize.spaceBtwSections),

              // Coupon Input
              const KCouponCode(),
              const SizedBox(height: KSize.spaceBtwSections),

              KRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(KSize.sizeMd),
                backgroundColor: dark ? KColors.black : KColors.white,
                child: const Column(
                  children: [
                    BillingAmountSections(),
                    SizedBox(height: KSize.spaceBtwItems),

                    Divider(),
                    SizedBox(height: KSize.spaceBtwItems),
                    BillingPaymentSections(),
                    SizedBox(height: KSize.spaceBtwItems),
                    BillingAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(KSize.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() =>  SuccessScreen(
            image: KImages.successPaymentIcon,
            title: 'Thanh toán thành công',
            subTitle: 'Đơn hàng của bạn sẽ sớm được vận chuyển đến bạn',
            onPressed: () => Get.offAll(() => const NavigationMenu()),
          )),
          child: const Text('Thanh toán 2.500.000đ'),
        ),
      ),
    );
  }
}
