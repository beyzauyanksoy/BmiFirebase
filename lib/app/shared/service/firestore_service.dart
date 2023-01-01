import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../controllers/userdataentry_controller.dart';

class FireStoreService extends GetxService {
  User? user = FirebaseAuth.instance.currentUser;


  yaziEkle(kilo, boy,sonuc) async {
    await FirebaseFirestore.instance
        .collection("users")
        .doc(user?.email)
        .collection("icerikler")
        .doc()
        .set({
      'kilo': kilo,
      'boy': boy,
      'bmi': sonuc,
      'bilgi': 'deneme bilgi'
    });
  }

  Stream<QuerySnapshot> getData() {
    var ref = FirebaseFirestore.instance
        .collection("users")
        .doc(user?.email)
        .collection("icerikler")
        .snapshots();
    return ref;
  }

    String sonuc() {
    String gonderilenDeger = Get.parameters['hesap'] ?? "";
    double sonuc = double.parse(gonderilenDeger);

    if (sonuc < 18.5) {
      return "Underweight";
    } else if (sonuc >= 18.5 && sonuc <= 24.9) {
      return "Normal";
    } else if (sonuc >= 25 && sonuc <= 29.9) {
      return "Over Weight";
    } else if (sonuc >= 30 && sonuc <= 34.9) {
      return "Obesity Class 1";
    } else if (sonuc >= 35 && sonuc <= 39.9) {
      return "Obesity Class 2";
    } else if (sonuc >= 40) {
      return "Extreme Obesity";
    }
    return "";
  }

  


}
