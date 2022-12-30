import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/user_detail_information_controller.dart';

class UserDetailInformationPage
    extends GetView<UserDetailInformationController> {
  const UserDetailInformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/Avatar.png",
                      width: 90,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      controller.loginController.email.text,
                      style:
                          const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              const Divider(),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 3 / 4,
                      crossAxisCount: 2,
                      mainAxisSpacing: 20),
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Image.asset("assets/Group.png"),
                        const Positioned(top: 25, left: 25, child: Text("Kilo: 48 ")),
                        const Positioned(top: 45, left: 25, child: Text("Boy: 162 ")),
                        const Positioned(
                            top: 65, left: 25, child: Text("Sonuç: 1.4 ")),
                        const Positioned(
                            top: 85,
                            left: 25,
                            child: Text("ideal kilonuzun altında")),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff1C974D),
        onPressed: () {},
        child: const Icon(Icons.scale),
      ),
    );
  }
}
