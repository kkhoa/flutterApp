import 'package:flutter/material.dart';
import 'package:webapp/utils/constants/colors.dart';

class KChipTheme{
  KChipTheme._();
  static ChipThemeData lightChipTheme= ChipThemeData(
    disabledColor: KColors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor: KColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 12),
    checkmarkColor: KColors.white,
  );
  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: KColors.darkerGrey,
    labelStyle: TextStyle(color: Colors.white),
    selectedColor: KColors.primary,
    // ignore: unnecessary_const
    padding:  EdgeInsets.symmetric(horizontal: 12.0,vertical: 12),
    checkmarkColor: KColors.white,
  );
}
