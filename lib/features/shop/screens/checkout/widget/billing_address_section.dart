import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webapp/common/widgets/texts/section_heading.dart';
import 'package:webapp/utils/constants/size.dart';

import '../../../../personalization/screens/address/address.dart';

class BillingAddressSection extends StatelessWidget {
  const BillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        KSectionHeading(title: 'Địa chỉ nhận',buttonTitle: 'Đổi',onPressed: ()=>Get.to(()=>const UserAddressScreen()),),
        Text('Khoa dz',style: Theme.of(context).textTheme.bodyLarge,),
        Row(
          children: [
            const Icon(Icons.phone,color: Colors.grey,size: 16,),
            const SizedBox(width: KSize.spaceBtwItems,),
            Text('212312321',style: Theme.of(context).textTheme.bodyMedium,),
            const SizedBox(height: KSize.spaceBtwItems/2,),
    Row(
    children: [
    const Icon(Icons.phone,color: Colors.grey,size: 16,),
    const SizedBox(width: KSize.spaceBtwItems,),
    Text('nhà ở huyện chào bè',style: Theme.of(context).textTheme.bodyMedium, softWrap: true,),
    const SizedBox(height: KSize.spaceBtwItems/2,),
    ],
    )],
        )

      ],
    );
  }
}
