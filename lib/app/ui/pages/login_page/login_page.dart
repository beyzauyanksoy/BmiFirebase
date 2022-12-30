import 'package:bmi_firebase/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/login_controller.dart';
import '../account_page/account_page.dart';

class LoginPage extends GetView<LoginController> {
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
                              "Login Account",
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
            Padding(
              padding: const EdgeInsets.only(right: 36, top: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    "Forget Password ?",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            GestureDetector(
              onTap: () async {
                print(controller.email.text);
                print(controller.password.text);
                await controller.aut.account(controller.email.text.trim(),
                    controller.password.text.trim());
               
              },
              child: Container(
                child: const Center(
                  child: Text(
                    "Login",
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
            Padding(
              padding: const EdgeInsets.only(top: 45, left: 47),
              child: Row(
                children: [
                  Container(
                    color: Color(0xffA39797),
                    width: 105,
                    height: 1,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    child: Text(
                      "Or sign up with",
                      style: TextStyle(
                          color: Color(
                            0xff757171,
                          ),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Container(
                    color: Color(0xffA39797),
                    width: 105,
                    height: 1,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, bottom: 50),
              child: Container(
                width: 280,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Image.asset("assets/google_logo.png"),
                      width: 75,
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x3f000000),
                            blurRadius: 1,
                            offset: Offset(0, 1),
                          ),
                        ],
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      child: Image.asset("assets/facebook_logo.png"),
                      width: 75,
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x3f000000),
                            blurRadius: 1,
                            offset: Offset(0, 1),
                          ),
                        ],
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      child: Image.asset("assets/apple_logo.png"),
                      width: 75,
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x3f000000),
                            blurRadius: 1,
                            offset: Offset(0, 1),
                          ),
                        ],
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 195,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Not register yet ?",
                    style: TextStyle(color: Color(0xff636363), fontSize: 13),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.ACCOUNT);
                    },
                    child: const Text(
                      "Create Account",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
