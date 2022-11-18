import 'package:app_hazconta/app/modules/home/home.controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'item_plate_widget.dart';

class ListPlateWidget extends StatelessWidget {
  const ListPlateWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('ListPlateWidget');
    return GetBuilder<HomeController>(
      id: 'ListPlateWidget',
      init: HomeController(),
      builder: (_) =>Container(
        color:Color.fromARGB(240, 240, 240, 240) ,
        child: ListView.builder(
            itemCount: _.listReservations.length,
            itemBuilder: (BuildContext context, int index) {
              return ItemPlateWidget(onTabCar:(){} ,dti:_.listReservations[index] ,) ;
            }) ,
      ),
    );
  }
}
