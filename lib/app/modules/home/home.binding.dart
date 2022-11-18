import 'package:app_hazconta/app/modules/home/home.controller.dart';

import 'package:get/get.dart';

class HomeBinding extends Bindings {
    @override
  void dependencies() {
    Get.lazyReplace(() => HomeController());
  }
}