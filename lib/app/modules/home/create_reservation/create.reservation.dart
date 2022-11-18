import 'package:app_hazconta/app/global_widgets/formInput/simple_input_field.date.dart';
import 'package:app_hazconta/app/global_widgets/rounded_button.alert.dart';
import 'package:app_hazconta/app/global_widgets/simple.dropdon.dart';
import 'package:app_hazconta/app/global_widgets/simple.form.text.cover.dart';
import 'package:app_hazconta/app/global_widgets/util.widgets.dart';
import 'package:app_hazconta/app/global_widgets/formInput/simple.Input.Tex.dart';
import 'package:app_hazconta/app/theme/Responsive.dart';
import 'package:app_hazconta/app/theme/appTextStyles.dart';
import 'package:app_hazconta/app/theme/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/models/Bestweather/Bestweather.dart';
import '../list_reservaion.dart/text_plate_widget.dart';
import 'create.reservation.controller.dart';

class CreateReservation extends StatelessWidget {
  final int type;
  List<Bestweather> data;

  CreateReservation({required this.type, required this.data});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CreateReservationController>(
      id: 'CreateReservation',
      init: CreateReservationController(),
      builder: (_) => ClipRRect(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20)),
          child: GestureDetector(
              onTap: () {
                FocusScopeNode currentFocus = FocusScope.of(context);

                if (!currentFocus.hasPrimaryFocus) {
                  currentFocus.unfocus();
                }
              },
              child: Container(
                  padding: EdgeInsets.all(AppColors.kDefaultPadding),
                  color: Colors.white,
                  /* height: Responsive.of().height < 600
                      ? Responsive.of().ip(por: 65)
                      : Responsive.of().ip(por: 68),*/
                  child: SingleChildScrollView(
                      padding: EdgeInsets.all(8.0),
                      child: Form(
                          key: _.formKey,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: Column(
                            children: [
                              Text(
                                "Agendar una Cancha",
                                style: AppTextStyles.titlebottomSheet,
                              ),
                              SizedBox(
                                height: Responsive.of().hd(por: 1),
                              ),
                              //******************************** */
                              // Desde la Fecha
                              //******************************** */
                              SimpleInputFieldDate(
                                //initialValue: _.initDate( ),
                                lastTimen: _.dateTime,
                                validator: (v) => _.validate.validateLarge(
                                  name: 'Desde la Fecha *',
                                  value: v,
                                ),
                                onChanged: (text) {
                                  _.setFromDateFilter(data: data, text: text);
                                },
                                hintText: 'Fecha',
                                labelText: 'Fecha',
                                icon: Icon(Icons.date_range_outlined),
                              ),
                              divisorH5(),

                              //******************************** */
                              // TIPO D CANCHA
                              //******************************** */
                              SimpleCoverFormText(
                                width: 100,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.keyboard_hide_sharp,
                                      color: AppColors.kAinactiColor,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                        child: AppDropdownInput(
                                      hintText: "Selecciona una chancha",
                                      options: _.documentType,
                                      value: _.typeCancha,
                                      onChanged: _.setTypeCancha,
                                      getLabel: (String value) => value,

                                    ))
                                  ],
                                ),
                              ),
                              divisorH5(),
                              //******************************** */
                              //Número de Documento
                              //******************************** */
                              SimpleInputText(
                                Width: 1,
                                initialValue: '',
                                readOnly: false,
                                enableInp: true,
                                onChanged: _.setNameUser,
                                hintText: 'Nombre del usuario',
                                labelText: 'Nombre del usuario',
                                keyboardType: TextInputType.text,
                                icon: Icon(Icons.person),
                                validator: (v) => _.validate.validateLarge(
                                    name: 'Nombre del usuario', value: v),
                              ),

                              Visibility(
                                visible: _.fromDate.isNotEmpty ? true : false,
                                child: Container(
                                  height: Responsive.of().hd(por: 10),
                                  width: Responsive.of().hd(por: 100),
                                  padding: EdgeInsets.symmetric(horizontal: 30),
                                  //color:Colors.red ,
                                  child: Row(
                                    children: [
                                      TextPlateWidget(
                                          name: "Probabilidad de lluvia: ",
                                          value: _.precipprob),
                                    ],
                                  ),
                                ),
                              ),

                              divisorH5(),
                              SizedBox(
                                height: Responsive.of().hd(por: 1),
                              ),

                              divisorH5(),

                              Row(
                                children: [
                                  RoundedButtonAlert(
                                      text: '  Cerrar  ',
                                      color: AppColors.kAinactiColor,
                                      press: () {
                                        Get.back();
                                      },
                                      padin: 5,
                                      textColor: Colors.white),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  RoundedButtonAlert(
                                      text: '  Guardar  ',
                                      color: AppColors.kPrimaryColor,
                                      press: _.addReservation,
                                      padin: 5,
                                      textColor: Colors.white),
                                ],
                              )
                            ],

                            //  crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          )))))),
    );
  }
}
