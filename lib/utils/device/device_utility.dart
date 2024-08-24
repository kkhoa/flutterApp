import 'dart:io'; // For platform checks
import 'package:flutter/foundation.dart'; // For platform checks
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart'; // Only this import is needed

class KDeviceUtils {
  // Method to hide the keyboard
  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  // Method to set the status bar color
  static Future<void> setStatusBarColor(Color color) async {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: color, // Correct property name
      ),
    );
  }

  // Method to check if the device is in landscape orientation
  static bool isLandscapeOrientation(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return size.width > size.height;
  }

  // Method to check if the device is in portrait orientation
  static bool isPortraitOrientation(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return size.width < size.height;
  }

  // Method to set fullscreen mode
  static void setFullScreen(bool enable) {
    SystemChrome.setEnabledSystemUIMode(
      enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge,
    );
  }

  // Method to get screen height
  static double getScreenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  // Method to get screen width
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  // Method to get pixel ratio
  static double getPixelRatio() {
    return MediaQuery.of(Get.context!).devicePixelRatio;
  }

  // Method to get status bar height
  static double getStatusBarHeight() {
    return MediaQuery.of(Get.context!).padding.top;
  }

  // Method to get button navigation bar height
  static double getButtonNavigationBarHeight() {
    final mediaQuery = MediaQuery.of(Get.context!);
    return mediaQuery.padding.bottom; // Use padding.bottom for navigation bar height
  }

  // Method to get app bar height
  static double getAppBarHeight() {
    return kToolbarHeight; // Ensure kToolbarHeight is imported
  }

  // Method to get keyboard height
  static double getKeyboardHeight() {
    final viewInsets = MediaQuery.of(Get.context!).viewInsets;
    return viewInsets.bottom;
  }

  // Method to check if the keyboard is visible
  static Future<bool> isKeyboardVisible() async {
    final viewInsets = MediaQuery.of(Get.context!).viewInsets;
    return viewInsets.bottom > 0;
  }

  // Method to check if the device is physical
  static Future<bool> isPhysicalDevice() async {
    return defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS;
  }

  // Method to vibrate the device
  static void vibrate(Duration duration) {
    HapticFeedback.vibrate();
    Future.delayed(duration, () => HapticFeedback.vibrate());
  }

  // Method to set preferred orientations
  static Future<void> setPreferredOrientations(List<DeviceOrientation> orientations) async {
    await SystemChrome.setPreferredOrientations(orientations);
  }

  // Method to hide the status bar
  static void hideStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }

  // Method to show the status bar
  static void showStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
  }

  // Method to check internet connection
  static Future<bool> hasInternetConnection() async {
    try {
      final result = await InternetAddress.lookup('example.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }

  // Method to check if the platform is iOS
  static bool isIOS() {
    return Platform.isIOS;
  }

  // Method to check if the platform is Android
  static bool isAndroid() {
    return Platform.isAndroid;
  }

  // Method to launch a URL
  static Future<void> launchUrl(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
