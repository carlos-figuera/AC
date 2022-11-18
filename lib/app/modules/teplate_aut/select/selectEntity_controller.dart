
import 'package:app_hazconta/app/data/repository/local/local_auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectEntityController extends GetxController {
  final LocalAuthRepository _localAuthRepository = Get.find<LocalAuthRepository>();



  final refreshKeySelected = GlobalKey<RefreshIndicatorState>();
  final refreshKeySearch = GlobalKey<RefreshIndicatorState>();

  Future<void> logOut() async {
    await _localAuthRepository.clearSession();

  }

  Future<Null> refresh() async {
    update(['itemListaEmtity']);
    return null;
  }
}