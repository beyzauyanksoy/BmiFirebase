import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/userdataentry_controller.dart';

class UserdataentryPage extends GetView<UserdataentryController> {
  const UserdataentryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 500,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/userbackgroundEntry.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 60, left: 15, right: 15),
                  child: Column(
                    children: [
                      const Text(
                        "Gerekli Bilgileri Giriniz !",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      TextFormField(
                        controller: controller.kilo,
                        decoration: const InputDecoration(
                          hintMaxLines: 2,
                          hintText: 'Kilo',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: controller.weight,
                        decoration: const InputDecoration(
                          hintMaxLines: 2,
                          hintText: 'Boy',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          print(controller.kilo.text);
                          print(controller.weight.text);
                          controller.db.yaziEkle(controller.kilo.text,
                              controller.weight.text, controller.bmiHesapla());

                          controller.bmiHesapla();
                          print(controller.bmiHesapla());
                        },
                        child: Builder(builder: (context) {
                          return Container(
                            child: const Center(
                              child: Text(
                                "Hesapla",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                            ),
                            width: 250,
                            height: 48,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color(0xff1C974D),
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
//FFE459