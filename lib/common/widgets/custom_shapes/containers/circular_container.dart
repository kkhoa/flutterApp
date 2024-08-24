import 'package:flutter/material.dart';
import '../../../../utils/constants/colors.dart';

class KCircularContainer extends StatelessWidget {
  const KCircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.radius = 400, // Adjusted to be half of width/height for circular shape
    this.padding = 0,
    this.margin = EdgeInsets.zero,
    this.child,
    this.backgroundColor = KColors.white,
  });

  final double width;
  final double height;
  final double radius;
  final double padding;
  final EdgeInsets margin;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
