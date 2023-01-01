
import 'package:get/get.dart';
import '../controllers/userdataentry_controller.dart';


class UserdataentryBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserdataentryController>(() => UserdataentryController());
  }
}