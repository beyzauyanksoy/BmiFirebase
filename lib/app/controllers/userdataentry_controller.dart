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

  String sonuc(result) {
    if (result < 18.5) {
      return "Zayıf";
    } else if (result >= 18.5 && result <= 24.9) {
      return "Normal";
    } else if (result >= 25 && result <= 29.9) {
      return "Kilolu";
    } else if (result >= 30 && result <= 34.9) {
      return "Obez Class 1";
    } else if (result >= 35 && result <= 39.9) {
      return "Obez Class 2";
    } else if (result >= 40) {
      return "Aşırı Obez";
    }
    return "";
  }


}
