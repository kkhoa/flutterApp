import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webapp/utils/constants/image_string.dart';
import 'package:webapp/utils/constants/size.dart';
import 'package:webapp/utils/constants/texts_string.dart';
import 'package:webapp/utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// AppBar with a clear button to navigate back
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(KSize.defaultSpace),
          child: Column(
            children: [
              /// Placeholder for an image; replace with actual image path
              Image.asset(
                KImages.deliveredEmailIllustration, // Replace with the correct image path
                width: KHelperFunctions.screenWidth() * 0.5, // Adjusted image width
              ),
              const SizedBox(height: KSize.spaceBtwSections),

              /// Title text
              Text(
                KTexts.confirmEmailTitle, // Ensure this is defined in KTexts
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: KSize.spaceBtwItems),

              /// Subtitle text
              Text(
                KTexts.confirmEmailSubTitle, // Ensure this is defined in KTexts
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: KSize.spaceBtwSections),

              /// Continue button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle button press
                  },
                  child: const Text(KTexts.done),
                ),
              ),
              const SizedBox(height: KSize.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    // Handle button press
                  },
                  child: const Text(KTexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
