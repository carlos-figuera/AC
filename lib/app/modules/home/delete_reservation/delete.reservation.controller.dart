 import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/models/reservation/reservation.search.dti.dart';

import '../../../data/providers/local/sqlite/canchasSqlite/canchas.sqlite.dart';
import '../../../global_widgets/validate.dart';
import '../../teplate_aut/success.widget.dart';
import '../home.controller.dart';

class DeleteReservationController extends GetxController {
  final CanchasSQLite canchasSQLite = Get.find<CanchasSQLite>();
  HomeController homeController = Get.find<HomeController>();

  int estadoConexion = 0;

  Validations validate = Validations();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void onInit() async {
    super.onInit();
  }

  updateUi() {
    update(['DeleteReservation']);
  }

  deleteReservation(ReservationDti dti) async {
    int resul = await canchasSQLite.deleteReservationSQLite(item: dti);
    print('Despues de eliminar ${resul}');
    homeController.getReservation();

    if (resul == 1) {
      Get.back();
      alertasSusses(
          title: 'La reservación fue eliminada',
          textoB1: 'Cerrar',
          textoB2: 'Aceptar',
          crearOtro: () {
            Get.back();
          },
          visi: false);
    } else {
      Get.back();
      alertasAviso(
          title: 'La reservación',
          body:
              'No pudo ser eliminada la reservación, Intenta nuevamente.Si el problema continua contacta con soporte ac@gmail.com .',
          cerrar: () {
            Get.back();
          });
    }
  }
}
