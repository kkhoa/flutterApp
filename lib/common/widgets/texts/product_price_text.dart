import 'package:flutter/material.dart';

class KProductPriceText extends StatelessWidget {
  const KProductPriceText({
    super.key,
    this.currencySign = '₫',
    required this.price,
    this.isLarge = false,
    this.maxLines = 1,
    this.lineThrough = false,
  });

  final String currencySign;
  final String price;
  final bool isLarge;
  final int maxLines;
  final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    // Choose text style based on isLarge
    TextStyle textStyle = isLarge
        ? Theme.of(context).textTheme.headlineMedium!
        : Theme.of(context).textTheme.bodyMedium!;

    // Apply strikethrough if needed
    textStyle = lineThrough
        ? textStyle.copyWith(decoration: TextDecoration.lineThrough)
        : textStyle;

    return Text(
      '$price $currencySign',
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: textStyle,
    );
  }
}
