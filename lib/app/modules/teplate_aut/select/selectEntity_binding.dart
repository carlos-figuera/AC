
import 'package:app_hazconta/app/modules/teplate_aut/select/selectEntity_controller.dart';
import 'package:get/get.dart';

class SelectEntityBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyReplace(() => SelectEntityController());
  }
}