import 'package:flutter/material.dart';
import 'package:webapp/utils/constants/colors.dart';
import 'package:webapp/utils/device/device_utility.dart';
import 'package:webapp/utils/helpers/helper_functions.dart';

class KTabBar extends StatelessWidget implements PreferredSizeWidget {
  const KTabBar({super.key,required this.tabs});
final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    final dark =KHelperFunctions.isDarkMode(context);
    return Material(
      color: dark?KColors.black:KColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: KColors.primary,
        labelColor: dark?KColors.white:KColors.primary,
        unselectedLabelColor: KColors.darkerGrey,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(KDeviceUtils.getAppBarHeight());


}

