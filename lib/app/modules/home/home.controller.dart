
  import 'package:flutter/material.dart';
import 'package:get/get.dart';

 import '../../data/models/Bestweather/Bestweather.dart';
import '../../data/models/reservation/reservation.search.dti.dart';
 import '../../data/providers/local/sqlite/canchasSqlite/canchas.sqlite.dart';
import '../../data/repository/remote/BestWeather_repository.dart';
import 'create_reservation/create.reservation.dart';
import 'delete_reservation/delete.reservation.dart';

class HomeController extends GetxController {
  final BestWeatherRepository bestWeatherRepository =
      Get.find<BestWeatherRepository>();
  List<Bestweather> data=[];

  String user = '';
  String nameCompany = '';
  List<ReservationDti> listReservations=[];
final CanchasSQLite canchasSQLite= Get.find<CanchasSQLite>();
  @override
  void onInit() {
    super.onInit();
    getDataTime();
  }
  @override
  void onReady() {
    super.onReady();
    getReservation();
  }





  getReservation() async {
  listReservations= await canchasSQLite.getReservationSearchSQLite();
    print('Despues de registar ${listReservations.length}');
    //ordena la lista
  listReservations.sort((a,b) =>DateTime.parse(a.date) .compareTo(DateTime.parse(b.date)));

  update(["BodyHome"]);
  }

  //obtiene la probabilidad de que llueva en los proximos 15 dias en una zona especifica de caracas
  getDataTime()   async {
   data= await  bestWeatherRepository.getWeather();
   print('Desde contorlador ${data.length}');
   data.forEach((element) {

       print(element.precipprob);
       print(element.datetime);
   });
  }


bool typeOrder=true;

  order(){
    if(typeOrder)
    {
      //ordena la lista
      listReservations.sort((a,b) =>DateTime.parse(a.date) .compareTo(DateTime.parse(b.date)));

      update(["BodyHome"]);
    }else{
      //ordena la lista
      listReservations.sort((b,a) =>DateTime.parse(a.date) .compareTo(DateTime.parse(b.date)));

      update(["BodyHome"]);
    }
  }

  //abre LA VENTANA PARA ELIMINAR UNA RESERVATIO
  void deleteReservation(ReservationDti dti ) {
    Get.bottomSheet(
      DeleteReservation(type: 1,dti: dti,   ),
      isScrollControlled: true,
      barrierColor: Colors.black26,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20), topLeft: Radius.circular(20)),
      ),
      isDismissible: true,
      enableDrag: true,
      elevation: 5,
    );
  }
  //abre LA VENTANA PARA CREAR UNA RESERVATIO
  void createReservation( ) {
    Get.bottomSheet(
      CreateReservation(type: 1, data: data,  ),
      isScrollControlled: true,
      barrierColor: Colors.black26,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20), topLeft: Radius.circular(20)),
      ),
      isDismissible: true,
      enableDrag: true,
      elevation: 5,
    );
  }

}
