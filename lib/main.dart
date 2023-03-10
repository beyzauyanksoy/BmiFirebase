import 'package:bmi_firebase/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

import 'di.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DenpendencyInjection.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: SplashPage(),
      initialRoute: Routes.SPLASH,
      getPages: AppPages.routes,
    );
  }
}
