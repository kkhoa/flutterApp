import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webapp/common/widgets/success_screen/success_screen.dart';
import 'package:webapp/features/authentication/screens/login/login.dart';
import 'package:webapp/utils/constants/colors.dart';
import 'package:webapp/utils/constants/image_string.dart';
import 'package:webapp/utils/constants/size.dart';
import 'package:webapp/utils/constants/texts_string.dart';
import 'package:webapp/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(KSize.defaultSpace),
          child: Column(
            children: [
              Image(
                image: const AssetImage(KImages.deliveredEmailIllustration),
                width: KHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: KSize.spaceBtwSections),
              Text(
                KTexts.confirmEmailTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: KSize.spaceBtwItems),
              Text(
                'Support@app.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: KSize.spaceBtwItems),
              Text(
                KTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: KSize.spaceBtwSections),
              SizedBox(
                width: double.infinity, // Make button full-width
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => SuccessScreen(
                      image: KImages.staticSuccessIllustration,
                      title: KTexts.accountCreatedTitle,
                      subTitle: KTexts.accountCreatedSubTitle,
                      onPressed: () => Get.to(() => const LoginScreen()),
                    ));
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50), // Set minimum height
                    padding: const EdgeInsets.symmetric(vertical: 16), // Add vertical padding
                  ),
                  child: const Text(KTexts.continueText),
                ),
              ),
              const SizedBox(height: KSize.spaceBtwSections),
              TextButton(
                onPressed: () {
                  // Implement resend email logic here
                },
                child: Text(
                  KTexts.resendEmail,
                  style: TextStyle(
                    color: dark ? KColors.white : KColors.primary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
