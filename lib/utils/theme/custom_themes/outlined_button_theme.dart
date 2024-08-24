import 'package:flutter/material.dart';

class KOutLinedButtonTheme{
  KOutLinedButtonTheme._();
  static final lightOutLinedButtonTheme= OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.black,
      side: const BorderSide(color: Colors.blue),
      textStyle:  const TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))
    )
  );
  /// dark them
  static final darkOutLinedButtonTheme= OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.black,
          side: const BorderSide(color: Colors.blue),
          textStyle:  const TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w600),
          padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))
      )
  );
}