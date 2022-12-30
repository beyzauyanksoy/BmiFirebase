
import 'package:get/get.dart';
import '../controllers/user_detail_information_controller.dart';


class UserDetailInformationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserDetailInformationController>(() => UserDetailInformationController());
  }
}