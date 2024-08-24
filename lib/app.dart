import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webapp/bindings/general_binding.dart';
// ignore: unused_import
import 'package:webapp/features/authentication/screens/onboarding.dart';
import 'package:webapp/utils/constants/colors.dart';
import 'package:webapp/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: KAppTheme.lightTheme,
      darkTheme: KAppTheme.darkTheme,
      initialBinding: GeneralBinding(),
      home: const Scaffold(backgroundColor: KColors.primary,body: Center(child: CircularProgressIndicator(color: Colors.white,),),),
    );
  }
}