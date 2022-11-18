import 'package:app_hazconta/app/modules/login/login_controller.dart';
import 'package:get/get.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyReplace(() => LoginController());
  }
}
