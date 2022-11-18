import 'package:app_hazconta/app/data/repository/local/local_auth_repository.dart';
import 'package:app_hazconta/app/modules/teplate_aut/response_widget/response.dialog.item.widget.dart';
import 'package:app_hazconta/app/routes/app_routes.dart';
import 'package:app_hazconta/app/theme/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

responseDialog({
  required int estadoConexion,
  required Function()? getData,
  dynamic Function()? cerrar,
}) {
  Get.dialog(
    AlertDialog(
      contentPadding: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(19.0))),
      //TITULO CON ICONO
      title:      Text(" ",
          style: TextStyle(
            color: AppColors.kPrimaryColor,
            fontSize: 17,
            fontWeight: FontWeight.bold,
          )),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //Sin conexion a internet
          ResponseDialogItemWidget(
            estadoConexion: estadoConexion,
            typeResponse:1,
            getData: getData,
            pathImage: "assets/images/no-connection-bro.svg",
            textinfo: "Verifica tu conexion a internet y vuelve a intentarlo. ",
            buttonTitle: 'Cerrar',
          ),

          //token expirado
          ResponseDialogItemWidget(
            estadoConexion: estadoConexion,
            typeResponse:2,
            getData: () {
              final LocalAuthRepository _localAuthRepository = Get.find<LocalAuthRepository>();

              _localAuthRepository.clearSession();
              getData!();
              Get.offAndToNamed(AppRoutes.LOGIN);
            },
            pathImage: "assets/icons/my-password-pana.svg",
            textinfo: "Debes iniciar sesión nuevamente. ",
            buttonTitle: ' Iniciar sesión',
          ),

          //Solicitud fallida
          ResponseDialogItemWidget(
            estadoConexion: estadoConexion,
            typeResponse: 3,
            getData: getData,
            pathImage: "assets/images/serve-error-pana.svg",
            textinfo:
                "Ocurrió un error inesperado, Vuelve a intentar cargar la información.  ",
            buttonTitle: 'Cerrar',
          ),

          SizedBox(
            width: 5.0,
            height: 5.0,
          ),
        ],
      ),

    ),
  );
}
