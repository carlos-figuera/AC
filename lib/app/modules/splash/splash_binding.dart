
import 'package:app_hazconta/app/modules/splash/splash_controller.dart';
import 'package:get/get.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyReplace(() => SplashController());
  }
}
