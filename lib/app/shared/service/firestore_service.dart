import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../controllers/userdataentry_controller.dart';

class FireStoreService extends GetxService {
  User? user = FirebaseAuth.instance.currentUser;

  yaziEkle(kilo, boy, sonuc, bilgi) async {
    await FirebaseFirestore.instance
        .collection("users")
        .doc(user?.email)
        .collection("icerikler")
        .doc(
          DateTime.now().toString().split(" ").first.substring(0, 10),
        )
        .set({
      'kilo': kilo,
      'boy': boy,
      'bmi': sonuc,
      'bilgi': bilgi,
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

  void deleteData(id) {
    FirebaseFirestore.instance
        .collection("users")
        .doc(user?.email)
        .collection("icerikler")
        .doc(id)
        .delete();
  }
}
