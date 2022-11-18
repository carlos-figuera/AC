import 'package:app_hazconta/app/global_widgets/rounded_button.alert.dart';
import 'package:app_hazconta/app/theme/Responsive.dart';
import 'package:app_hazconta/app/theme/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//DIALODO QUE SE MOSTRARA CUANDO UNA ACCION SE COMPLETE CON EXITO
alertasSusses(
    {required String title,
    dynamic Function()? crearOtro,
    dynamic Function()? regresarActulizar,
    required String textoB1,
      required String textoB2,
      required bool visi,
    }) {
  Get.dialog(
    AlertDialog(
      contentPadding: EdgeInsets.symmetric(vertical: 15,horizontal:10 ),

      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(19.0))),
      title: Icon(Icons.check_circle_outline, color: Colors.green, size: 80),
      content: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.kTextColorBlack,
              fontSize:    Responsive.of().height < 600
                  ? Responsive.of().ip(por:3)
                  : Responsive.of().ip(por: 2.4),
              fontWeight: FontWeight.bold,
            )),
      ),
      actions: [
        //BOTON PARA REGRESAR  RECARGAR LA LISTA
      Row(
        children: [
          Visibility(
              visible:visi ,
              child:  RoundedButtonAlert(
              text:textoB1 ,
              color: AppColors.kAnaranjadoColor,
              press: regresarActulizar,
                  padin: 5,
              textColor: Colors.white),

          ),
          SizedBox(width: 10,),
          //BOTON PARA CERRAR EL CUADRO DE DIALOGO E INTENTAR UNA NUEVA ACCION

          RoundedButtonAlert(
              text: textoB2,
              color: AppColors.kPrimaryColor,
              press: crearOtro,
              padin: 5,
              textColor: Colors.white),
        ],
      ) ,


      ],
      elevation:5 ,
      actionsAlignment:MainAxisAlignment.center ,
      actionsOverflowButtonSpacing:0 ,
      buttonPadding:EdgeInsets.symmetric( horizontal:7,vertical: 5 )  ,
      actionsPadding:EdgeInsets.all(10) ,
    ),
    barrierDismissible: false,
  );
}

//DIALODO QUE SE MOSTRARA CUANDO UNA ACCION FALLA

alertasError(
    {required String title,
    required String body,
    dynamic Function()? crearOtro,
    dynamic Function()? regresarActulizar,
      required String textoB1,
      required String textoB2,
      required bool visi,

    }) {
  Get.dialog(
    AlertDialog(
      contentPadding: EdgeInsets.all(20),

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(19.0))),
      //TITULO CON ICONO
      title: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            Icons.error_outline,
            color: AppColors.kAnaranjadoColor,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("   $title",
                  style: TextStyle(
                    color: AppColors.kAnaranjadoColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ),
        ],
      ),
      content: Text(body,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.kAinactiColor,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          )),
      actions: [
        //BOTON PARA REGRESAR  RECARGAR LA LISTA
        Row(
          children: [
            Visibility(
                visible:visi ,
                child:  RoundedButtonAlert(
                    text:textoB1 ,
                    color: AppColors.kAnaranjadoColor,
                    press: regresarActulizar,
                    textColor: Colors.white,
                  padin: 5,
                )),
            //BOTON PARA CERRAR EL CUADRO DE DIALOGO E INTENTAR UNA NUEVA ACCION
            RoundedButtonAlert(
                text: textoB2,
                color: AppColors.kAnaranjadoColor,
                press: crearOtro,
                padin: 5,
                textColor: Colors.white),
          ],
        ) ,


      ],

      elevation:5 ,
      actionsAlignment:MainAxisAlignment.center ,
      actionsOverflowButtonSpacing:0 ,
      buttonPadding:EdgeInsets.symmetric( horizontal:7,vertical: 5 )  ,
      actionsPadding:EdgeInsets.all(12) ,
    ),
    barrierDismissible: false,
  );
}

alertasAviso(
    {required String title,
      required String body,
      dynamic Function()? cerrar,
      }) {
  Get.dialog(
    AlertDialog(
      contentPadding: EdgeInsets.all(10),

      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(19.0))),
      //TITULO CON ICONO
      title: Row(

        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            Icons.error_outline,
            color: AppColors.kAnaranjadoColor,
            size:30 ,
          ),
         SizedBox(width:10 ),
         Expanded(child:  Text(" $title",
             style: TextStyle(
               color: AppColors.kPrimaryColor,
               fontSize: 17,
               fontWeight: FontWeight.bold,
             )),)
        ],
      ),
      content: Text(body,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.kAinactiColor,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          )),
      actions: [
        //BOTON PARA REGRESAR  RECARGAR LA LISTA



        //BOTON PARA CERRAR EL CUADRO DE DIALOGO E INTENTAR UNA NUEVA ACCION

        RoundedButtonAlert(
            text: '   Cerrar  ',
            color: AppColors.kAnaranjadoColor,
            press: cerrar,
            padin: 5,
            textColor: Colors.white),

      ],
    ),
    barrierDismissible: false,
  );
}


alertasCreateMeasurement(
    {required String title,
      required String body,
      dynamic Function()? cerrar,
      dynamic Function()? aceptar,
    }) {
  Get.dialog(
    AlertDialog(
      contentPadding: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(19.0))),
      //TITULO CON ICONO
      title: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            Icons.error_outline,
            color: AppColors.kAnaranjadoColor,
          ),
          Text(" $title",
              style: TextStyle(
                color: AppColors.kPrimaryColor,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              )),
        ],
      ),
      content: Text(body,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.kAinactiColor,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          )),
      actions: [
        //BOTON PARA  CERRAR

        RoundedButtonAlert(
            text: '  Cerrar  ',
            color: AppColors.kAnaranjadoColor,
            press: cerrar,
            padin: 5,
            textColor: Colors.white),

        //BOTON PARA CERRAR EL CUADRO DE DIALOGO E INTENTAR UNA NUEVA ACCION

        RoundedButtonAlert(
            text: '   Aceptar  ',
            color: AppColors.kPrimaryColor,
            press: aceptar,
            padin: 5,
            textColor: Colors.white),

      ],
    ),
  );
}

alertaCarga({required String title}) {
  Get.dialog(
    AlertDialog(
      contentPadding: EdgeInsets.all(5),
     titlePadding: EdgeInsets.all(15),

      //TITULO CON ICONO
      title: Center(
          child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircularProgressIndicator(backgroundColor: AppColors.kPrimaryColor),
        SizedBox(width:8 ),
        Expanded(child:   Text("$title",
            style: TextStyle(
              color: AppColors.kPrimaryColor,
              fontSize: 18,
              letterSpacing:1 ,
              fontWeight: FontWeight.bold,
            )),)
        ],
      )),
    ),
    barrierDismissible: false,

  );
}
