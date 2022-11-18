 import 'package:app_hazconta/app/global_widgets/rounded_button.alert.dart';
 import 'package:app_hazconta/app/global_widgets/util.widgets.dart';
 import 'package:app_hazconta/app/theme/Responsive.dart';
import 'package:app_hazconta/app/theme/appTextStyles.dart';
import 'package:app_hazconta/app/theme/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/models/reservation/reservation.search.dti.dart';
import 'delete.reservation.controller.dart';


class DeleteReservation extends StatelessWidget {
  final int type;
  final ReservationDti dti;
  DeleteReservation({required this.type,required this.dti});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DeleteReservationController>(
      id: 'DeleteReservation',
      init: DeleteReservationController(),
      builder: (_) => ClipRRect(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20)),
          child:GestureDetector(
              onTap:(){
                FocusScopeNode currentFocus = FocusScope.of(context);

                if (!currentFocus.hasPrimaryFocus) {
                  currentFocus.unfocus();
                }

              },

              child:  Container(
                  padding: EdgeInsets.all(AppColors.kDefaultPadding),
                  color: Colors.white,
                 /* height: Responsive.of().height < 600
                      ? Responsive.of().ip(por: 65)
                      : Responsive.of().ip(por: 68),*/
                  child: SingleChildScrollView(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [


                          Text(
                            "¿Estas absolutamente seguro ?",
                            style: AppTextStyles.titlebottomSheet,
                          ),

                          //******************************** */
                          //clientes
                          //******************************** */

                          SizedBox(height: Responsive.of().hd(por: 2),),
                          divisorH5(),
                          divisorH5(),

                          RichText(
                            text: TextSpan(
                              text: 'Confirma que quieres eliminar el agendamiento de la ',

                              style: AppTextStyles.subTitleBottomSheet,

                              children: <TextSpan>[
                                TextSpan(
                                  text: '${dti.typeCancha} ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.kAnaranjadoColor,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                  ' del usuario ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),

                                TextSpan(
                                  text:'${dti.nameUser} ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.kAnaranjadoColor,
                                  ),
                                ),
                                TextSpan(
                                  text:'con la fecha de '
                                  ,
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                TextSpan(
                                  text: '${dti.date} ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.kAnaranjadoColor,
                                  ),
                                ),
                              ],
                            ),
                            textAlign:TextAlign.justify ,

                          ),
                          divisorH5(),
                          divisorH5(),




                          SizedBox(height: Responsive.of().hd(por: 2),),

                          divisorH5(),


                          Row(
                            children: [
                              RoundedButtonAlert(
                                  text: '  Cerrar  ',
                                  color: AppColors.kAinactiColor,
                                  press: () => Navigator.pop(context),
                                  padin: 5,
                                  textColor: Colors.white),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundedButtonAlert(
                                  text: '  Eliminar  ',
                                  color: AppColors.kAnaranjadoColor,
                                  press:(){
                                    _.deleteReservation(dti);
                                  },
                                  padin: 5,
                                  textColor: Colors.white),
                            ],
                          )
                        ],

                      //  crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      ))) ) ),
    );
  }
}
