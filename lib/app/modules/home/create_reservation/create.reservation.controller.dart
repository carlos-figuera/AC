import 'package:app_hazconta/app/data/repository/remote/refresh_token.dart';
import 'package:app_hazconta/app/modules/teplate_aut/success.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../data/models/Bestweather/Bestweather.dart';
import '../../../data/models/reservation/reservation.search.dti.dart';
import '../../../data/providers/local/sqlite/canchasSqlite/canchas.sqlite.dart';
import '../../../global_widgets/validate.dart';
import '../home.controller.dart';

class CreateReservationController extends GetxController {
  HomeController homeController = Get.find<HomeController>();
  final CanchasSQLite canchasSQLite = Get.find<CanchasSQLite>();
  List<String> documentType = ['', "CANCHA_A", "CANCHA_B", "CANCHA_C"];

  int estadoConexion = 0;
  bool visibleButtonBar = false;

  String fromDate = "", typeCancha = "", nameUser = "", precipprob = "";

  Validations validate = Validations();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  RxString initialText = "".obs;

  @override
  void onInit() async {
    super.onInit();
    // await getClient() ;
    initDate();
  }

  DateTime dateTime = new DateTime.now();

  String initDate() {
    final DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    fromDate = formatter.format(now);
    // something like 2013-04-20

    print(dateTime.day);

    dateTime = dateTime.add(Duration(days: 15));
    print(dateTime.day);

    return DateTime.now().toString();
  }

  updateUi() {
    update(['CreateReservation']);
  }

  Future<void> getClient() async {
    estadoConexion = await validateget();
    if (estadoConexion == 4) {
      try {} catch (e) {
        //3) solicitud fallida con error inesperado
        estadoConexion = 3;
        print('👻👻👻👻');
        print(e);
        print('👻👻👻👻');
      }
    }
    updateUi();
  }

  addReservation() async {
    if (formKey.currentState!.validate()) {
      if (validateCancha()) {
        if (await validateCanchaCount( cancha: typeCancha,date: fromDate )) {
        ReservationDti item = ReservationDti(
            id: 0,
            date: fromDate,
            nameUser: nameUser,
            probavilityRain: precipprob,
            typeCancha: typeCancha);
        canchasSQLite.addReservationSQLite(item: item);
        List<ReservationDti> dataSection =
            await canchasSQLite.getReservationSearchSQLite();
        print('Despues de registar ${dataSection.length}');
        homeController.getReservation();
        Get.back();

        alertasSusses(
            title: 'La reservacion fue completada',
            textoB1: 'Cerrar',
            textoB2: 'Aceptar',
            crearOtro: () {
              Get.back();
            },
            visi: false);
      }
    }}
  }

  bool validateCancha() {
    if (typeCancha.isNotEmpty) {
      return true;
    } else {
      alertasError(
          title: 'Cancha Requerida*',
          body: 'Debe seleccionar una cancha antes de guardar.',
          textoB1: 'cerrar',
          textoB2: 'Cerrar',
          crearOtro: () {
            Get.back();
          },
          visi: false);

      return false;
    }
  }

  List<ReservationDti> listReservations = [];

  getReservation() async {

    print('Despues de registar ${listReservations.length}');

    update(["BodyHome"]);
  }

  Future<bool> validateCanchaCount({required String date, required String cancha}) async {
    listReservations = await canchasSQLite.getReservationCoutCancha(date: date, typeCancha: typeCancha);


    if (listReservations.length < 3) {
      return true;
    } else {
      alertasError(
          title: 'Cancha llena*',
          body: 'La Cancha ya agendada 3 veces el día $date. Debe seleccionar otra fecha antes de guardar.',
          textoB1: 'cerrar',
          textoB2: 'Cerrar',
          crearOtro: () {
            Get.back();
          },
          visi: false);

      return false;
    }
  }

  // -----------------------------------------------
  // set filtro por setFromDateFilter
  // -----------------------------------------------
  void setFromDateFilter(
      {required String text, required List<Bestweather> data}) {
    fromDate = text!;
    print(fromDate);
    setPrecipProb(date: text, data: data);
    updateUi();
  }

// -----------------------------------------------
  // set  probabilidad que llueva
  // -----------------------------------------------
  void setPrecipProb({required List<Bestweather> data, required String date}) {
    data.forEach((element) {
      print(precipprob);
      if (element.datetime.toString() == date) {
        precipprob = element.precipprob;
        print(precipprob);
      }
    });
    print(precipprob);
    updateUi();
  }

  // -----------------------------------------------
  // set filtro por setTypeDocument
  // -----------------------------------------------
  void setTypeCancha(String? text) {
    typeCancha = text!;
    print(typeCancha);
    updateUi();
  }

  // -----------------------------------------------
  // set filtro por setTypeDocument
  // -----------------------------------------------
  void setNameUser(String? text) {
    nameUser = text!;
    print(nameUser);
    updateUi();
  }

// -----------------------------------------------
// Aplicar filtro
// -----------------------------------------------

  void goResultFilterSales() async {
    Get.back();
    //Get.toNamed( AppRoutes.ResulSalesSearch, arguments: filters);
  }
}
