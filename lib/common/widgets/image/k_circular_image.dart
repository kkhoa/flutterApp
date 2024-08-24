import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/size.dart';
import '../../../utils/helpers/helper_functions.dart';

class KCircularImage extends StatelessWidget {
  const KCircularImage({
    super.key,
    this.width = 56,
    this.height = 56,
    this.overlayColor,
    this.backgroundColor,
    required this.image,
    this.fit = BoxFit.cover,
    this.padding = KSize.sizeSm,
    this.isNetworkImage = false,
  });

  final double width;
  final double height;
  final double padding;
  final Color? overlayColor;
  final Color? backgroundColor;
  final String image;
  final BoxFit fit;
  final bool isNetworkImage;

  @override
  Widget build(BuildContext context) {
    // Determine the background color
    Color bgColor = backgroundColor ?? (KHelperFunctions.isDarkMode(context) ? KColors.black : KColors.white);

    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Image(
          fit: fit,
          image: isNetworkImage ? NetworkImage(image) : AssetImage(image) as ImageProvider,
          color: overlayColor,
        ),
      ),
    );
  }
}
