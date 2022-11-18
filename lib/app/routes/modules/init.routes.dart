
import 'package:app_hazconta/app/modules/login/login_binding.dart';
import 'package:app_hazconta/app/modules/login/login_page.dart';

import 'package:app_hazconta/app/modules/splash/splash_binding.dart';
import 'package:app_hazconta/app/modules/splash/splash_page.dart';
import 'package:get/get.dart';
import '../app_routes.dart';

class InitRoutes {
  static final List<GetPage> pages = [

    GetPage(
      name: AppRoutes.LOGIN,
      page: () => Login(),
      binding: LoginBinding(),
    ),

    GetPage(
      name: AppRoutes.SPLASH,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),
  ];
}
