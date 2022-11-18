
import 'package:get/get.dart';
import 'create.reservation.controller.dart';

class CreateReservationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyReplace(() => CreateReservationController());
  }
}
