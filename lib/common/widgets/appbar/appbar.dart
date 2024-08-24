import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:webapp/utils/device/device_utility.dart';

class KAppBar extends StatelessWidget implements PreferredSizeWidget {
  const KAppBar({
    super.key,
    this.title,
    this.actions,
    this.leadingIcon,
    this.leadingOnPressed,
    this.showBackArrow = true,
  });

  final Widget? title;
  final List<Widget>? actions;
  final Icon? leadingIcon;
  final VoidCallback? leadingOnPressed;
  final bool showBackArrow;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false, // Disable automatic back button
      title: title,
      actions: actions,
      leading: showBackArrow
          ? IconButton(
        onPressed: () => Get.back(),
        icon: const Icon(Iconsax.arrow_left),
      )
          : leadingIcon != null
          ? IconButton(
        onPressed: leadingOnPressed,
        icon: leadingIcon!,
      )
          : null,
      elevation: 0, // Optional: Remove shadow
      toolbarHeight: KDeviceUtils.getAppBarHeight(), // Set the height explicitly
      backgroundColor: Colors.transparent, // Optional: Make background transparent if needed
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(KDeviceUtils.getAppBarHeight());
}
