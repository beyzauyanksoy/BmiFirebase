import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/user_detail_information_controller.dart';

import '../../../routes/app_pages.dart';


class UserDetailInformationPage
    extends GetView<UserDetailInformationController> {
  const UserDetailInformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;
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
                      "${user?.email}",
                      // controller.loginController.email.text,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w500),
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
                child: StreamBuilder(
                    stream: controller.db.getData(),
                    builder: (context, snapshot) {
                      return !snapshot.hasData
                          ? const CircularProgressIndicator()
                          : GridView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: snapshot.data!.docs.length,
                              shrinkWrap: true,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      childAspectRatio: 5 / 4,
                                      crossAxisCount: 2,
                                      mainAxisSpacing: 20),
                              itemBuilder: (context, index) {
                                DocumentSnapshot myBlog =
                                    snapshot.data!.docs[index];
                                return Stack(
                                  children: [
                                    Image.asset("assets/Group1.png"),
                                    Positioned(
                                        bottom: 10,
                                        right: 40,
                                        child: GestureDetector(
                                          onTap: () {
                                            controller.db.deleteData(
                                                snapshot.data!.docs[index].id);
                                          },
                                          child: Image.asset(
                                            "assets/trash.png",
                                          ),
                                        )),
                                    Positioned(
                                        top: 20,
                                        left: 25,
                                        child: Text(
                                          "Kilo: ${myBlog["kilo"]}",
                                        )),
                                    Positioned(
                                        top: 40,
                                        left: 25,
                                        child: Text(
                                          "Boy: ${myBlog["boy"]}",
                                        )),
                                    Positioned(
                                      top: 60,
                                      left: 25,
                                      child: GetBuilder<
                                              UserDetailInformationController>(
                                          builder: (controller) {
                                        return Text(
                                          "Sonuç: ${myBlog["bmi"].toString().split(' ').first.substring(0, 4)}",
                                        );
                                      }),
                                    ),
                                    Positioned(
                                        top: 80,
                                        left: 25,
                                        child:
                                            Text("bilgi : ${myBlog["bilgi"]}")),
                                  ],
                                );
                              },
                            );
                    }),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff1C974D),
        onPressed: () {
          //Get.toNamed(Routes.USERDATAENTRY);
          Get.toNamed(Routes.DATAENTRY);
        },
        child: const Icon(Icons.scale),
      ),
    );
  }
}
