
 import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectEntityController extends GetxController {


  final refreshKeySelected = GlobalKey<RefreshIndicatorState>();
  final refreshKeySearch = GlobalKey<RefreshIndicatorState>();

  Future<void> logOut() async {

  }

  Future<Null> refresh() async {
    update(['itemListaEmtity']);
    return null;
  }
}