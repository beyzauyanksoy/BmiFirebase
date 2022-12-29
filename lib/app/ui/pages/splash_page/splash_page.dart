import 'package:bmi_firebase/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/splash_controller.dart';
import '../login_page/login_page.dart';

class SplashPage extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Image.asset("assets/login_background.png"),
          Image.asset(
            "assets/splash_image.jpeg",
            width: 250,
          ),
          const Padding(
              padding: EdgeInsets.only(top: 15, bottom: 15),
              child: Text(
                "Explore the app",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              )),
          const Padding(
            padding: EdgeInsets.only(left: 32, right: 17),
            child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi maecenas quis interdum enim enim molestie faucibus. Pretium non non massa eros, nunc, urna. Ac laoreet sagittis donec vel. Amet, duis justo, quam quisque egestas. Quam enim at dictum condimentum. Suspendisse."),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: GestureDetector(
              onTap: () {
                Get.toNamed(Routes.LOGIN);
              },
              child: Container(
                child: const Center(
                    child: Text(
                  "Lets Start",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                )),
                width: 328,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xffffc600),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
