import 'package:flutter/material.dart';
import 'package:webapp/common/styles/spacing_style.dart';

import '../../../utils/constants/size.dart';
import '../../../utils/constants/texts_string.dart';
import '../../../utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    this.onPressed,
  });

  final String image;
  final String title;
  final String subTitle;
  final VoidCallback? onPressed; // Use VoidCallback? to allow null

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: KSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              Image(
                image: AssetImage(image),
                width: KHelperFunctions.screenWidth() * 0.5, // Adjusted image width
              ),
              const SizedBox(height: KSize.spaceBtwSections),
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: KSize.spaceBtwItems),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: KSize.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: const Text(KTexts.continueText),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
