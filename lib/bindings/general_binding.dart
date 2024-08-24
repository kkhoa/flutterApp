import 'package:get/get.dart';
import 'package:webapp/common/widgets/network/network_manager.dart';


class GeneralBinding extends Bindings {
  @override
  void dependencies() {
   Get.put(NetworkManager());
  }
}
