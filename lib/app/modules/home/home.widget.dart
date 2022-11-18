import 'package:app_hazconta/app/modules/home/home.controller.dart';



import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'list_reservaion.dart/body_home_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (_) => BodyHome(),
      // builder: (_) => Scaffold(),
    );
  }


}
