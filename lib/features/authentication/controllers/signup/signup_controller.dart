import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:webapp/utils/constants/image_string.dart';
import 'package:webapp/utils/popups/fullscreenloader.dart';
import 'package:webapp/utils/popups/loader.dart';

import '../../../../common/widgets/network/network_manager.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  // Các biến
  final email = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  final GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  Future<void> signup() async {
    try {
      // Hiển thị loader
      KFullscreenLoader.openLoadingDialog('Chúng tôi đang hoàn thiện thông tin của bạn', KImages.animation);

      // Kiểm tra kết nối internet
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        return;
      }


      // Kiểm tra tính hợp lệ của biểu mẫu
      if (!signupFormKey.currentState!.validate()) {
        return;
      }

      // Thực hiện hành động đăng ký ở đây

    } catch (e) {
      KFullscreenLoader.stopLoading();
      KLoader.errorSnackBar(
          title: 'Đăng ký thất bại', // Tiêu đề cho thông báo lỗi
          message: e.toString()
      );
    }
  }
}
