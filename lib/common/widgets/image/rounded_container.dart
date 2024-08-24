import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/size.dart';

class KRoundedContainer extends StatelessWidget {
  const KRoundedContainer({
    super.key,
    this.child,
    this.width,
    this.height,
    this.border,
    this.margin = EdgeInsets.zero,
    this.showBorder = false,
    this.radius = KSize.cardRadiusLg,
    this.backgroundColor = KColors.white,
    this.padding = EdgeInsets.zero,
    this.borderColor = KColors.borderPrimary,
  });

  final double? width;
  final double? height;
  final BoxBorder? border;
  final EdgeInsetsGeometry margin;
  final bool showBorder;
  final double radius;
  final Color backgroundColor;
  final EdgeInsetsGeometry padding;
  final Color borderColor;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: showBorder ? Border.all(color: borderColor) : null,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}
