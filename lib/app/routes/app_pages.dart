import 'package:bmi_firebase/app/bindings/account_binding.dart';
import 'package:bmi_firebase/app/bindings/user_detail_information_binding.dart';
import 'package:bmi_firebase/app/ui/pages/account_page/account_page.dart';
import 'package:get/get.dart';

import '../bindings/login_binding.dart';
import '../bindings/splash_binding.dart';
import '../ui/pages/login_page/login_page.dart';
import '../ui/pages/splash_page/splash_page.dart';
import '../ui/pages/user_detail_information_page/userdetailinformation_page.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.ACCOUNT,
      page: () => AccountPage(),
      binding: AccountBinding(),
    ),
    GetPage(
      name: Routes.USERDETAIL,
      page: () => UserDetailInformationPage(),
      binding: UserDetailInformationBinding(),
    ),
  ];
}
