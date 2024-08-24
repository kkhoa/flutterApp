import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/size.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../image/rounded_container.dart';

class KCouponCode extends StatelessWidget {
  const KCouponCode({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);

    return KRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? KColors.dark : KColors.white,
      padding: const EdgeInsets.all(KSize.sizeSm),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Bạn có mã giảm giá? hãy điền vào đây',
                focusedBorder: InputBorder.none,
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: dark
                    ? KColors.white.withOpacity(0.5)
                    : KColors.dark.withOpacity(0.5),
                backgroundColor: Colors.grey.withOpacity(0.5),
                side: BorderSide(color: Colors.grey.withOpacity(0.1)),
              ),
              child: const Text('Áp dụng'),
            ),
          ),
        ],
      ),
    );
  }
}
