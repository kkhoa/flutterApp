import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:webapp/common/styles/spacing_style.dart';
import 'package:webapp/features/authentication/screens/login/socialbutton.dart';
import 'package:webapp/features/authentication/screens/signup/signup.dart';
import 'package:webapp/utils/constants/colors.dart';
import 'package:webapp/utils/constants/image_string.dart';
import 'package:webapp/utils/constants/size.dart';
import 'package:webapp/utils/constants/texts_string.dart';
import 'package:webapp/utils/helpers/helper_functions.dart';
import '../../../../navigation_menu.dart';
import '../password_config/forget_password.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  LoginScreenState createState() => LoginScreenState();
}

// Make this class public by removing the underscore
class LoginScreenState extends State<LoginScreen> {
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    final bool dark = KHelperFunctions.isDarkMode(context);

    return Scaffold(
      backgroundColor: dark ? Colors.black : Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: KSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo
              Image.asset(
                dark ? KImages.lightAppLogo : KImages.darkAppLogo,
                height: 150,
              ),
              Text(
                KTexts.loginTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: KSize.sizeSm),
              Text(
                KTexts.loginSubTitle,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: KSize.spaceBtwInputField),

              // Form Fields
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: KSize.spaceBtwSections),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.direct_right),
                          labelText: KTexts.email,
                        ),
                      ),
                      const SizedBox(height: KSize.spaceBtwInputField),
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          labelText: KTexts.password,
                          suffixIcon: Icon(Iconsax.eye_slash),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: KSize.spaceBtwInputField / 2),

              // Remember Me
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: _rememberMe,
                        onChanged: (bool? value) {
                          setState(() {
                            _rememberMe = value ?? false;
                          });
                        },
                      ),
                      const Text(KTexts.rememberMe),
                    ],
                  ),
                ],
              ),

              // Sign In Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => const NavigationMenu()),
                  child: const Text(KTexts.signIn),
                ),
              ),
              const SizedBox(height: KSize.spaceBtwItems),

              // Create Account Button
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () => Get.to(() => const SignupScreen()),
                  child: const Text(KTexts.createAccount),
                ),
              ),
              const SizedBox(height: KSize.spaceBtwInputField),

              // Forgot Password
              TextButton(
                onPressed: () => Get.to(() => const ForgetPassword()),
                child: const Text(KTexts.forgetPassword),
              ),
              const SizedBox(height: KSize.spaceBtwSections),

              // Divider Section
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

              // Social Media Buttons
              const SocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}