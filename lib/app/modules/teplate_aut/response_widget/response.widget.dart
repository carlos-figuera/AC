 import 'package:app_hazconta/app/modules/splash/splash_shimmer_page.dart';
import 'package:app_hazconta/app/modules/teplate_aut/response_widget/response.item.widget.dart';
import 'package:app_hazconta/app/modules/teplate_aut/response_widget/response500.item.widget.dart';

import 'package:app_hazconta/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../login/login_controller.dart';
@immutable
class ResponsWidgetPag extends StatefulWidget {
  final int estadoConexion;
  final Function()? getData;
  final String ? ruta;

   ResponsWidgetPag({
    Key? key,
    required this.estadoConexion,
     this.ruta,
    this.getData,

  }) : super(key: key);

  @override
  _ResponsWidgetPagState createState() => _ResponsWidgetPagState();
}

class _ResponsWidgetPagState extends State<ResponsWidgetPag> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      id: 'responsePage',
      builder: (_) => Scaffold(
        body: SafeArea(
          minimum: EdgeInsets.symmetric(horizontal: 10, vertical: 1),
          child: Column(
            children: [
              Visibility(
                  visible: widget.estadoConexion == 0 ,
                  child:
                   // estado inical cargad shimmer 0
                  Container(
                      margin: EdgeInsets.only(top: 1),
                       height:  Get.height *0.75,
                      width: Get.width * 1,
                      child: ListView(
                        children: [
                          SplashShimmerPage()
                        ],)
                  )
              ),

              //Sin conexion a internet 1

              ResponseItemWidget(
                estadoConexion: widget.estadoConexion,
                typeResponse: 1,
                getData: widget.getData,
                pathImage: "assets/images/no-connection-bro.svg",
                textinfo:
                "Verifica tu conexion a internet y  vuelve a intentarlo. ",
                buttonTitle: 'Recargar Datos',
              ),
              //token expirado 2
              ResponseItemWidget(
                estadoConexion: widget.estadoConexion,
                typeResponse: 2,
                getData: () {
                //  _.logOut();
                  Get.offAndToNamed(AppRoutes.LOGIN);
                },
                pathImage: "assets/icons/my-password-pana.svg",
                textinfo: "Debes iniciar sesión nuevamente. ",
                buttonTitle: 'Iniciar sesión',
              ),

              //Solicitud fallida por servidor 3

              Response500ItemWidget(
                estadoConexion: widget.estadoConexion,
                typeResponse: 3,
                getData: widget.getData,
                pathImage: "assets/images/serve-error-pana.svg",
                textinfo:
                "Ocurrió un error inesperado, Vuelve a intentar cargar la información.  ",
                buttonTitle: 'Recargar',
                regresar: () {
                  widget. ruta==null?  Get.offNamed(AppRoutes.HOME):Get.offNamed("${widget.ruta}");
                },
              ),



              SizedBox(height: 15)
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
        ),
      ),
    );
  }
}
