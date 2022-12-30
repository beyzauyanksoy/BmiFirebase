import 'package:get/get.dart';

import 'app/shared/service/firebase_service.dart';

class DenpendencyInjection {
  static init() async {
    await Get.putAsync(() => FirebaseService().init());
  }
}
