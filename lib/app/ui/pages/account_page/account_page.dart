import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/account_controller.dart';

class AccountPage extends GetView<AccountController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 260,
              child: Stack(
                children: [
                  Image.asset("assets/login_background.png"),
                  Positioned(
                    top: 50,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              "Create Account",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Image.asset("assets/User.png")
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Welcome!",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 80, left: 20),
                          child: Container(
                            child: Row(
                              children: const [
                                Text(
                                  "BMI",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 40,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "CALCULATOR",
                                  style: TextStyle(
                                      color: Color(0xffFFC600),
                                      fontSize: 40,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26, right: 36),
              child: TextFormField(
                controller: controller.email,
                decoration: InputDecoration(
                  hintText: "Enter Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26, right: 36, top: 11),
              child: TextFormField(
                controller: controller.password,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            GestureDetector(
              onTap: () async {
                print(controller.email.text);
                print(controller.password.text);
                await controller.aut.createUser(controller.email.text.trim(),
                    controller.password.text.trim());
              },
              child: Container(
                child: const Center(
                  child: Text(
                    "Account",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                ),
                width: 328,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xffffc600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
