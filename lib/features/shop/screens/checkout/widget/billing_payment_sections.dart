import 'package:flutter/material.dart';
import 'package:webapp/common/widgets/image/rounded_container.dart';
import 'package:webapp/common/widgets/texts/section_heading.dart';
import 'package:webapp/utils/constants/colors.dart';
import 'package:webapp/utils/constants/image_string.dart';
import 'package:webapp/utils/constants/size.dart';
import 'package:webapp/utils/helpers/helper_functions.dart';

class BillingPaymentSections extends StatelessWidget {
  const BillingPaymentSections({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=KHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        KSectionHeading(title: 'Phương thức thanh toán',buttonTitle: 'đổi',onPressed: (){},),
        const SizedBox(height: KSize.spaceBtwItems/2,),
        Row(
          children: [
            KRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark?KColors.light:KColors.white,
              padding: const EdgeInsets.all(KSize.sizeSm),
              child: const Image(image: AssetImage(KImages.visa),fit: BoxFit.contain,),
            ),
            const SizedBox(width: KSize.spaceBtwItems/2,),
            Text('Visa',style: Theme.of(context).textTheme.bodyLarge,)
          ],
        )
      ],
    );
  }
}
