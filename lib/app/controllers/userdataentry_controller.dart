import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../shared/service/firestore_service.dart';

class UserdataentryController extends GetxController {
  TextEditingController kilo = TextEditingController();
  TextEditingController weight = TextEditingController();
  FireStoreService db = FireStoreService();
  double result = 0.0;
  bmiHesapla() {
    result = double.parse(kilo.text) /
        ((double.parse(weight.text) / 100) * (double.parse(weight.text) / 100));
    return result;
  }
}
