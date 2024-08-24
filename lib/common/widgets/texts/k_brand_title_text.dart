import 'package:flutter/material.dart';
import '../../../utils/constants/enums.dart';

// Define TextSize enum if not already defined

class KBrandTitleText extends StatelessWidget {
  const KBrandTitleText({
    super.key,
    this.color,
    this.maxLines = 1,
    required this.title,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSize.small,
  });

  final Color? color;
  final int maxLines;
  final String title;
  final TextAlign textAlign;
  final TextSize brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textAlign,
      style: brandTextSize == TextSize.small
          ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
          : brandTextSize == TextSize.large
          ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
          : Theme.of(context).textTheme.bodyMedium!.apply(color: color),
    );
  }
}
