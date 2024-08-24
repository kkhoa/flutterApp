import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:webapp/features/personalization/screens/address/address.dart';
import 'package:webapp/features/shop/screens/cart/cart.dart';
import 'package:webapp/features/shop/screens/order/order.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/list_title/setting_menu_title.dart';
import '../../../../common/widgets/list_title/user_profile_title.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/size.dart';
import '../profile/profile.dart';
// Make sure this import path is correct

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            KPrimaryHeaderContainer(
              child: Column(
                children: [
                  KAppBar(
                    showBackArrow: false, // No back arrow
                    leadingIcon: null,
                    title: Text(
                      'Tài khoản',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: KColors.white),
                    ),
                  ),
                  // User profile card with navigation
                  KUserProfileTitle(
                    onPressed: () => Get.to(() => const ProfileScreen()),
                  ),
                  const SizedBox(height: KSize.spaceBtwSections),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(KSize.defaultSpace),
              child: Column(
                children: [
                  const KSectionHeading(
                    title: 'Cài đặt tài khoản',
                    showActionButton: false,
                  ),
                  const SizedBox(height: KSize.spaceBtwItems),
                  KSettingMenuTitle(
                    icon: Iconsax.safe_home,
                    title: 'Địa chỉ',
                    subTitle: 'Địa chỉ nhận hàng',
                    onTap: () =>Get.to(()=>const UserAddressScreen()),
                  ),
                  KSettingMenuTitle(
                    icon: Iconsax.shopping_cart,
                    title: 'Giỏ hàng',
                    subTitle: 'Sản phẩm trong giỏ hàng',
                    onTap: () =>Get.to(()=>const CartScreen()),
                  ),
                  KSettingMenuTitle(
                    icon: Iconsax.receipt_2,
                    title: 'Đơn hàng',
                    subTitle: 'Lịch sử đơn hàng của bạn',
                    onTap: () =>Get.to(()=>const OrderScreen()),
                  ),
                  KSettingMenuTitle(
                    icon: Iconsax.wallet_3,
                    title: 'Tài khoản ngân hàng',
                    subTitle: 'Quản lý tài khoản ngân hàng',
                    onTap: () {},
                  ),
                  KSettingMenuTitle(
                    icon: Iconsax.discount_shape,
                    title: 'Mã giảm giá',
                    subTitle: 'Các mã giảm giá của bạn',
                    onTap: () {},
                  ),
                  KSettingMenuTitle(
                    icon: Iconsax.notification,
                    title: 'Thông báo',
                    subTitle: 'Quản lý thông báo của bạn',
                    onTap: () {},
                  ),
                  KSettingMenuTitle(
                    icon: Iconsax.user,
                    title: 'Quyền riêng tư tài khoản',
                    subTitle: 'Thiết lập quyền riêng tư của tài khoản',
                    onTap: () {},
                  ),
                  const SizedBox(height: KSize.spaceBtwSections),
                  // App settings
                  const KSectionHeading(
                    title: 'Cài đặt ứng dụng',
                    showActionButton: false,
                  ),
                  const SizedBox(height: KSize.spaceBtwItems),
                  KSettingMenuTitle(
                    icon: Iconsax.document_upload,
                    title: 'Đang tải dữ liệu',
                    subTitle: 'Upload dữ liệu của bạn lên Firebase',
                    onTap: () {},
                  ),
                  KSettingMenuTitle(
                    icon: Iconsax.location,
                    title: 'Vị trí địa lý',
                    subTitle: 'Thiết lập đề xuất dựa trên vị trí',
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {
                        // Handle switch state change
                      },
                    ),
                  ),
                  KSettingMenuTitle(
                    icon: Iconsax.security_user,
                    title: 'Chế độ an toàn',
                    subTitle: 'Bật chế độ an toàn',
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {
                        // Handle switch state change
                      },
                    ),
                  ),
                  KSettingMenuTitle(
                    icon: Iconsax.image,
                    title: 'Chất lượng hình ảnh HD',
                    subTitle: 'Tăng chất lượng hình ảnh',
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {
                        // Handle switch state change
                      },
                    ),
                  ),
                  const SizedBox(height: KSize.spaceBtwSections,),

                  // Logout button with blue background color
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle logout action
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Blue background color
                        padding: const EdgeInsets.symmetric(vertical: 15), // Increase vertical padding
                      ),
                      child: const Text(
                        'Đăng xuất tài khoản',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),

                  const SizedBox(height: KSize.spaceBtwSections * 2.5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
