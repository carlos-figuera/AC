import 'package:app_hazconta/app/modules/home/home.controller.dart';

import 'package:app_hazconta/app/modules/home/sidebar/menu.page.dart';
import 'package:app_hazconta/app/theme/appColors.dart';
import 'package:app_hazconta/app/theme/appTextStyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'list_plate_widget.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('BodyHome');
    return GetBuilder<HomeController>(
      id: 'BodyHome',
      init: HomeController(),
      builder: (_) => Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.kPrimaryColor,
          centerTitle: true,
          title: Text('AC'.toUpperCase()),
        ),
        body: SafeArea(
          child: ListPlateWidget(),
        ),
        drawer: MenuDrawer(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.kPrimaryColor,
          child: Icon(Icons.add),
          onPressed: () {
            // _.canchasSQLite.getReservationSearchSQLite();
            _.createReservation();
            // _.getDataTime();
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        //Get.back();
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.search,
                            color: AppColors.kPrimaryColor,
                          ),
                          Text('Buscar', style: AppTextStyles.texButonBar)
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        _.order();
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            _.typeOrder
                                ? Icons.arrow_circle_up
                                : Icons.arrow_circle_down,
                            color: AppColors.kPrimaryColor,
                          ),
                          Text('Ordenar', style: AppTextStyles.texButonBar)
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
