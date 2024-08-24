import 'package:flutter/material.dart';
import 'package:webapp/utils/constants/size.dart';

class BillingAmountSections extends StatelessWidget {
  const BillingAmountSections({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tổng tất cả',style: Theme.of(context).textTheme.bodyMedium,),
            Text('2.500.000đ',style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: KSize.spaceBtwItems,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Phí ship',style: Theme.of(context).textTheme.bodyMedium,),
            Text('0đ',style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        const SizedBox(height: KSize.spaceBtwItems,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Thuế',style: Theme.of(context).textTheme.bodyMedium,),
            Text('0đ',style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: KSize.spaceBtwItems,),
      ],
    );
  }
}
