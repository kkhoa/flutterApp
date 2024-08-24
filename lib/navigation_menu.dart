import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:webapp/features/personalization/screens/settings/setting.dart';
import 'package:webapp/features/shop/screens/home/home.dart';
import 'package:webapp/features/shop/screens/wishlist/wishlist.dart';
import 'package:webapp/utils/constants/colors.dart';
import 'package:webapp/utils/helpers/helper_functions.dart';

import 'features/shop/screens/store/store.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode =KHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
            () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: darkMode? KColors.black : Colors.white,
          indicatorColor: darkMode? KColors.white.withOpacity(0.1): KColors.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Trang chủ'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Cửa hàng'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Yêu thích'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Tài Khoản '),
          ],
        ),
      ),
      body: Obx(
            () => controller.screens[controller.selectedIndex.value],
      ),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final  screens = [
    const HomeScreen(),
    const StoreScreen(),
    const FavoriteScreen(),
    const SettingScreen(),
  ];
}
