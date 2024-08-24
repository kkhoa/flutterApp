import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:webapp/utils/constants/size.dart';

class KProfileMenu extends StatelessWidget {
  const KProfileMenu({
    super.key,
    required this.onPressed,
    required this.title,
    required this.value,
    this.icon = Iconsax.arrow_right_34, // Đặt giá trị mặc định cho icon
  });

  final IconData icon;
  final VoidCallback onPressed;
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: KSize.spaceBtwItems / 1.5),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodySmall,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
              flex: 5,
              child: Text(
                value,
                style: Theme.of(context).textTheme.bodyMedium,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Icon(
              icon,
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}
