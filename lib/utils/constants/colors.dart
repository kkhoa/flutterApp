import 'package:flutter/material.dart';

class KColors {
  KColors._();

  /// App basic color
  static const Color primary = Color(0xFF4B68FF);
  static const Color secondary = Color(0xFFFFE24B);
  static const Color accent = Color(0xFFB0C7FF);
/// gradient colors
  static const LinearGradient linearGradient = LinearGradient(
      begin: Alignment(0.0, 0.0),
      end: Alignment(0.707, -0.707),
      colors: [
        Color(0xffff9a9e),
        Color(0xfffad0c4),
        Color(0xfffad0c4),
  ]);
  /// Text  Color textPrimary = Color(0xFF333333);
   static const Color textSecondary = Color(0xFF6c757d);
   static const Color textWhite = Colors.white;
  static const textPrimary = Color(0xFF333333);
  /// Background color
  static const Color light = Color(0xFFF6f6f6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFf3f5ff);

  /// Background container color
  static const Color lightContainer = Color(0xFFF6f6f6);
  static  Color darkContainer = Colors.white.withOpacity(0.1);
  ///button color
  static const Color buttonPrimary = Color(0xFF4b68ff);
  static const Color buttonSecondary = Color(0xFF6c757d);
  static const Color buttonDisable = Color(0xFFc4c4c4);
/// border color
  static const Color borderPrimary= Color(0xFFd9d9d9);
  static const Color borderSecondary= Color(0xFFe6e6e6);
  ///error validation
  static const Color error= Color(0xFFd32f2f);
  static const Color success= Color(0xFF388e3c);
  static const Color warning= Color(0xFFf57c00);
  static const Color info= Color(0xFF1976d2);
  /// neutral shades
  static const Color black = Color(0xFF232323); // Black color
  static const Color darkerGrey = Color(0xFF4F4F4F); // Darker grey
  static const Color darkGrey = Color(0xFF939393); // Dark grey
  static const Color grey = Color(0xFFE0E0E0); // Grey
  static const Color softGrey = Color(0xFFF4F4F4); // Soft grey
  static const Color lightGrey = Color(0xFFF9F9F9); // Light grey
  static const Color white = Color(0xFFFFFFFF); // White color
  }



