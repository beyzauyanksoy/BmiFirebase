import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../shared/service/auth_service.dart';

class AccountController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  AuthService aut = AuthService();
}
