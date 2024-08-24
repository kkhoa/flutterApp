import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:webapp/features/authentication/controllers/signup/signup_controller.dart';
import 'package:webapp/utils/constants/colors.dart';
import 'package:webapp/utils/constants/size.dart';
import 'package:webapp/utils/constants/texts_string.dart';
import 'package:webapp/utils/helpers/helper_functions.dart';
import 'package:webapp/utils/validators/validator.dart';
import '../login/socialbutton.dart'; // Ensure this import if using Iconsax

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  SignupScreenState createState() => SignupScreenState();
}

class SignupScreenState extends State<SignupScreen> {
  bool _agreeToTerms = false; // Track the checkbox state

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
    final controller=Get.put(SignupController());
    return Scaffold(
key: controller.signupFormKey,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(KSize.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, // Align content to the start
          children: [
            Text(
              KTexts.signUpTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: KSize.spaceBtwSections),
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Use Row to place TextFormFields side by side
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: controller.firstName,
                          validator: (value)=>KValidator.validateEmptyText('Tên', value),
                          expands: false,
                          decoration: const InputDecoration(
                            labelText: KTexts.firstName,
                            prefixIcon: Icon(Iconsax.user), // Ensure Iconsax is imported
                          ),
                        ),
                      ),
                      const SizedBox(width: KSize.spaceBtwInputField),
                      Expanded(
                        child: TextFormField(
                          controller: controller.lastName,
                          expands: false,
                          validator: (value)=>KValidator.validateEmptyText('Họ', value),
                          decoration: const InputDecoration(
                            labelText: KTexts.lastName,
                            prefixIcon: Icon(Iconsax.user), // Ensure Iconsax is imported
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: KSize.spaceBtwSections),
                  TextFormField(
                    controller: controller.username,
                    expands: false,
                    validator: (value)=>KValidator.validateEmptyText('Tên đăng nhập', value),
                    decoration: const InputDecoration(
                      labelText: KTexts.username,
                      prefixIcon: Icon(Iconsax.user_edit),
                    ),
                  ),
                  const SizedBox(height: KSize.spaceBtwInputField),
                  TextFormField(
                    controller: controller.email,
                    expands: false,
                    validator: (value)=>KValidator.validateEmail( value),
                    decoration: const InputDecoration(
                      labelText: KTexts.email,
                      prefixIcon: Icon(Iconsax.direct),
                    ),
                  ),
                  const SizedBox(height: KSize.spaceBtwInputField),
                  TextFormField(
                    controller: controller.phoneNumber,
                    expands: false,
                    validator: (value)=>KValidator.validatePhoneNumber( value),
                    decoration: const InputDecoration(
                      labelText: KTexts.phoneNo,
                      prefixIcon: Icon(Iconsax.call),
                    ),
                  ),
                  const SizedBox(height: KSize.spaceBtwInputField),
                  TextFormField(
                    controller: controller.password,
                    expands: false,
                    validator: (value)=>KValidator.validatePassword( value),
                    decoration: const InputDecoration(
                      labelText: KTexts.password,
                      prefixIcon: Icon(Iconsax.password_check),
                      suffixIcon: Icon(Iconsax.eye_slash),
                    ),
                  ),
                  const SizedBox(height: KSize.spaceBtwSections),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center, // Align checkbox and text vertically
                    children: [
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: Checkbox(
                          value: _agreeToTerms,
                          onChanged: (bool? value) {
                            setState(() {
                              _agreeToTerms = value ?? false;
                            });
                          },
                        ),
                      ),
                      const SizedBox(width: KSize.spaceBtwItems),
                      Expanded(
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: '${KTexts.iAgreeTo} ',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              TextSpan(
                                text: '${KTexts.privacyPolicy} ',
                                style: Theme.of(context).textTheme.bodyMedium!.apply(
                                  color: dark ? KColors.white : KColors.primary,
                                  decoration: TextDecoration.underline,
                                  decorationColor: dark ? KColors.white : KColors.primary,
                                ),
                                // Handle privacy policy tap
                              ),
                              TextSpan(
                                text: '${KTexts.and} ',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              TextSpan(
                                text: KTexts.termsOfUse,
                                style: Theme.of(context).textTheme.bodyMedium!.apply(
                                  color: dark ? KColors.white : KColors.primary,
                                  decoration: TextDecoration.underline,
                                  decorationColor: dark ? KColors.white : KColors.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: KSize.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => controller.signup,
                      child: const Text(KTexts.createAccount),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: KSize.spaceBtwSections),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Divider(
                    color: dark ? KColors.darkGrey : KColors.grey,
                    thickness: 0.5,
                    indent: 60,
                    endIndent: 5,
                  ),
                ),
                Text(
                  KTexts.orSignInWith.capitalize!,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                Flexible(
                  child: Divider(
                    color: dark ? KColors.darkGrey : KColors.grey,
                    thickness: 0.5,
                    indent: 5,
                    endIndent: 60,
                  ),
                ),
              ],
            ),
            const SizedBox(height: KSize.spaceBtwSections),
            const SocialButton(),
          ],
        ),
      ),
    );
  }
}
