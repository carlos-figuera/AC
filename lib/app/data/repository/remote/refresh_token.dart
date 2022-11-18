import 'dart:io';
 import 'package:app_hazconta/app/theme/appColors.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';



//final LocalAuthRepository _localAuthRepository = Get.find<LocalAuthRepository>();

// 1)La conexion a internet no esta activa
// 2) token esta expeirado
// 3) la respuesta en null
// 4) Internet y token activos
Future<int> validateget() async {
  int estado = 4;
  bool isExpired = await validateToken();
  bool con = await checkConnection();
  //La conexion  a internet esta activa
  if (con) {
    // 2) token esta expeirado
    if (isExpired) {
      estado = 2;
      Get.snackbar(
          'Estado de sesión',
          'El token ha Expirado ',
          isDismissible:true ,
          backgroundColor:AppColors.kAinactiColor ,
          icon:Icon(Icons.voice_over_off,color:AppColors.kAnaranjadoColor ) ,
          margin:EdgeInsets.all(10) ,
          snackPosition: SnackPosition.BOTTOM);

    }
    // 4) Internet y token activos
    else {
      estado = 4;
    }

    // 1)La conexion a internet no esta activa
  } else {
    estado = 1;
  }

  return estado;
}

Future<bool> validateToken() async {
 return true;
}

Future<bool> checkConnection() async {
  bool hasConnection = false;
  try {
    final result = await InternetAddress.lookup('google.com');
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      hasConnection = true;

    } else {

      print('No tienes conexión a internet  ');
      hasConnection = false;

      Get.snackbar(
          'Estado de conexión',
          'No tienes conexión a internet  ',
          isDismissible:true ,
          backgroundColor:AppColors.kAinactiColor ,
          icon:Icon(Icons.signal_wifi_off_rounded,color:AppColors.kAnaranjadoColor ) ,
          margin:EdgeInsets.all(10) ,
          snackPosition: SnackPosition.BOTTOM);

    }
  } on SocketException catch (_) {
    print('No tienes conexión a internet  ');
    hasConnection = false;
    Get.snackbar(
        'Estado de conexión',
        'No tienes conexión a internet  ',
        isDismissible:true ,
        backgroundColor:AppColors.kAinactiColor ,
        margin:EdgeInsets.all(10) ,
        snackPosition: SnackPosition.TOP);

  }

  return hasConnection;
}