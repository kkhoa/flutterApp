import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class KLoader {
  // Ẩn Snackbar hiện tại
  static void hideSnackBar() {
    ScaffoldMessenger.of(Get.context!).hideCurrentSnackBar();
  }

  // Hiển thị Toast thông báo
  static void customToast({
    required String message,
  }) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.black.withOpacity(0.8),
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  // Hiển thị Snackbar thông báo thành công
  static void successSnackBar({required String message}) {
    Get.snackbar(
      'Thành công',
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green.shade600,
      colorText: Colors.white,
      borderRadius: 8,
      margin: const EdgeInsets.all(12),
      duration: const Duration(seconds: 3),
      icon: const Icon(Iconsax.tick_circle, color: Colors.white),
      snackStyle: SnackStyle.FLOATING,
    );
  }

  // Hiển thị Snackbar cảnh báo
  static void warningSnackBar({required String message}) {
    Get.snackbar(
      'Cảnh báo',
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.orange.shade600,
      colorText: Colors.white,
      borderRadius: 8,
      margin: const EdgeInsets.all(12),
      duration: const Duration(seconds: 3),
      icon: const Icon(Iconsax.warning_2, color: Colors.white),
      snackStyle: SnackStyle.FLOATING,
    );
  }

  // Hiển thị Snackbar thông báo lỗi
  static void errorSnackBar({required String title, required String message}) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.red.shade600,
      colorText: Colors.white,
      borderRadius: 8,
      margin: const EdgeInsets.all(12),
      duration: const Duration(seconds: 3),
      icon: const Icon(Iconsax.close_circle, color: Colors.white),
      snackStyle: SnackStyle.FLOATING,
    );
  }
}
