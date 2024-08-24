import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:webapp/utils/constants/colors.dart';
import 'package:webapp/utils/constants/size.dart';

class KAnimationLoader extends StatelessWidget {
  final String text;
  final String animation; // Expecting a string path to Lottie asset
  final bool showAction;
  final String? actionText;
  final VoidCallback? onActionPressed;

  const KAnimationLoader({
    super.key,
    required this.animation,
    required this.text,
    this.showAction = false,
    this.actionText,
    this.onActionPressed,
  });

  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            animation,
            width: MediaQuery.of(context).size.width * 0.8,
          ),
          const SizedBox(height: KSize.defaultSpace),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: KSize.defaultSpace),
          if (showAction && actionText != null && onActionPressed != null)
            SizedBox(
              width: 250,
              child: OutlinedButton(
                onPressed: onActionPressed,
                style: OutlinedButton.styleFrom(
                  backgroundColor: dark ? KColors.dark : KColors.primary,
                ),
                child: Text(
                  actionText!,
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: KColors.light,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
