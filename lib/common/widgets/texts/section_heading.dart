
import 'package:flutter/material.dart';

class KSectionHeading extends StatelessWidget {
  const KSectionHeading({
    super.key,
    this.textColor,
    this.showActionButton =true,
    required this.title,
    this.buttonTitle='Xem tất cả ',
    this.onPressed,
  });

  final Color? textColor;
  final bool showActionButton;
  final String title;
  final String buttonTitle;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall?.apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(
            onPressed: onPressed,
            child: Text(buttonTitle),
          ),
      ],
    );
  }
}
