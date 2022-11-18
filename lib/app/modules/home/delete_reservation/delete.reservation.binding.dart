
import 'package:get/get.dart';
import 'delete.reservation.controller.dart';

class DeleteReservationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyReplace(() => DeleteReservationController());
  }
}
