import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:webapp/utils/constants/colors.dart';
import 'package:webapp/utils/constants/size.dart';
import 'package:webapp/utils/helpers/helper_functions.dart';
import '../../../../../common/widgets/image/rounded_container.dart';

class KSingleAddress extends StatelessWidget {
  const KSingleAddress({super.key, required this.selectedAddress});
  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
    return KRoundedContainer(
      padding: const EdgeInsets.all(KSize.sizeMd),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress ? KColors.primary.withOpacity(0.5) : Colors.transparent,
      borderColor: selectedAddress ? Colors.transparent : dark ? KColors.darkerGrey : KColors.grey,
      margin: const EdgeInsets.only(bottom: KSize.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress ? (dark ? KColors.light : KColors.dark) : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Khoa Dz',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: KSize.sizeSm),
              const Text(
                '123-4567 89',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: KSize.sizeSm),
              const Text(
                'Nhà mặt ở huyện cái chèo chèo cái là tôi',
                softWrap: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
