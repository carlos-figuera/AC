import 'package:app_hazconta/app/modules/home/home.controller.dart';
import 'package:app_hazconta/app/theme/Responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/models/reservation/reservation.search.dti.dart';
import 'text_plate_widget.dart';

class ItemPlateWidget extends StatelessWidget {
  final void Function() onTabCar;
  final ReservationDti dti;

  ItemPlateWidget({required this.onTabCar,required this.dti});

  @override
  Widget build(BuildContext context) {
    print('ItemPlateWidget');
    return GetBuilder<HomeController>(
      id: 'ItemPlateWidget',
      init: HomeController(),
      builder: (_) => Padding(
        padding: const EdgeInsets.all(8.0),
        child:Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Container(
            //color: Color.fromARGB(240, 240, 240, 240),
            padding: const EdgeInsets.all(15.0),
            height: Responsive.of().hd(por: 20),
            child: Column(children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                          children: [
                            TextPlateWidget(
                                name: "Usuario : ", value:dti.nameUser),
                            TextPlateWidget(name: "Cancha : ", value: dti.typeCancha),
                            TextPlateWidget(name: "Fecha: ", value: dti.date),
                            Expanded(
                              child: Row(
                                children: [
                                  TextPlateWidget(
                                      name: "Probabilidad de lluvia: ",
                                      value: dti.probavilityRain),
                                  IconButton(
                                      onPressed: () {
                                        _.deleteReservation(dti);
                                      },
                                      icon: Icon(
                                        Icons.delete_forever,
                                        color: Colors.red,
                                      ))
                                ],
                              ),
                            )
                          ],
                        )),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
