import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:webapp/features/authentication/screens/password_config/reset_password.dart';
import 'package:webapp/utils/constants/size.dart';
import 'package:webapp/utils/constants/texts_string.dart';

/// A screen for users to request a password reset link.
class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// AppBar with title for navigation context
      appBar: AppBar(
        title: const Text('Forgot Password'),
      ),
      body: Padding(
        /// Padding around the body content for consistent spacing
        padding: const EdgeInsets.all(KSize.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Main title of the Forget Password screen
            Text(
              KTexts.forgetPassword,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: KSize.spaceBtwItems),

            /// Subtitle providing additional information to the user
            Text(
              KTexts.forgotPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: KSize.spaceBtwItems * 2),

            /// Email input field
            TextFormField(
              decoration: const InputDecoration(
                labelText: KTexts.email,
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            const SizedBox(height: KSize.spaceBtwItems),

            /// Submit button for initiating the password reset process
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(()=>const ResetPassword()) ,
                child: const Text(KTexts.submit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
