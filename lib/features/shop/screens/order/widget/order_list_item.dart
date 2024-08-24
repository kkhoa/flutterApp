import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:webapp/common/widgets/image/rounded_container.dart';
import 'package:webapp/utils/constants/colors.dart';
import 'package:webapp/utils/constants/size.dart';
import 'package:webapp/utils/helpers/helper_functions.dart';

class OrderListItem extends StatelessWidget {
  const OrderListItem({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);

    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (context, index) => const SizedBox(height: KSize.spaceBtwItems),
      itemCount: 6, // Replace with the actual number of items
      itemBuilder: (_, index) => KRoundedContainer(
        padding: const EdgeInsets.all(KSize.sizeMd),
        showBorder: true,
        backgroundColor: dark ? KColors.dark : KColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                /// Icon
                const Icon(Iconsax.ship),
                const SizedBox(width: KSize.spaceBtwItems / 2),

                /// Status and Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Trạng thái',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .apply(color: KColors.primary, fontWeightDelta: 1),
                      ),
                      Text(
                        'Đang ship',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Iconsax.arrow_right_34,
                    size: KSize.iconSm,
                  ),
                ),
              ],
            ),
            const SizedBox(height: KSize.spaceBtwItems),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      /// Icon
                      const Icon(Iconsax.tag),
                      const SizedBox(width: KSize.spaceBtwItems / 2),

                      /// Order Number
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Đơn hàng',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text(
                              '#1',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      /// Icon
                      const Icon(Iconsax.calendar),
                      const SizedBox(width: KSize.spaceBtwItems / 2),

                      /// Estimated Delivery Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dự kiến hàng tới ngày',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text(
                              '12-11-2024',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}
