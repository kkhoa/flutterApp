import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_string.dart';
import '../image/k_circular_image.dart';

class KUserProfileTitle extends StatelessWidget {
  const KUserProfileTitle({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const KCircularImage(
        image: KImages.user,
        height: 50,
        width: 50,
        padding: 0,
      ),
      title: Text(
        'Khoa',
        style: Theme.of(context).textTheme.headlineSmall!.apply(color: KColors.white),
      ),
      subtitle: Text(
        'Khoadepzai@siucapvipro.com',
        style: Theme.of(context).textTheme.bodyMedium!.apply(color: KColors.white),
      ),
      trailing: IconButton(
        onPressed: onPressed, // Call the onPressed callback
        icon: const Icon(Iconsax.edit, color: KColors.white),
      ),
    );
  }
}
