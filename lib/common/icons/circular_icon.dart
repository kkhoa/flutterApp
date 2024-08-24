import 'package:flutter/material.dart';
import 'package:webapp/utils/constants/size.dart';
import 'package:webapp/utils/helpers/helper_functions.dart';
import '../../utils/constants/colors.dart';

class KCircularIcon extends StatelessWidget {
  const KCircularIcon({
    this.width, // Optional width property
    this.height, // Optional height property
    this.color, // Optional icon color
    this.backgroundColor, // Optional background color
    required this.icon, // Required icon property
     this.onPress, // Required onPress callback

    this.size = KSize.sizeXl, // Default icon size
    super.key,
  });

  final double? width; // Optional width property
  final double? height; // Optional height property
  final Color? color; // Optional icon color
  final Color? backgroundColor; // Optional background color
  final IconData icon; // Required icon property
  final VoidCallback? onPress; // Required onPress callback
  final double size; // Optional icon size with a default value

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);

    return Container(
      width: width ?? size, // Use size for width
      height: height ?? size, // Use size for height
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size / 2), // Circle shape
        color: backgroundColor ??
            (dark ? KColors.black.withOpacity(0.9) : KColors.white.withOpacity(0.9)),
      ),
      child: Center( // Center the icon within the container
        child: IconButton(
          onPressed: onPress, // Call the provided onPress function
          icon: Icon(icon, color: color, size: size), // Use the provided icon, color, and size
          padding: EdgeInsets.zero, // Remove default padding
          constraints: const BoxConstraints(), // Remove default constraints
        ),
      ),
    );
  }
}
