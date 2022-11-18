

import 'package:app_hazconta/app/theme/Responsive.dart';
import 'package:app_hazconta/app/theme/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class RoundedButtonAlert extends StatelessWidget {
  final String text;
  final VoidCallback?  press;
  final Color color, textColor;

  final double padin ;
  const RoundedButtonAlert({
    Key? key,
    required this.text, 
    this.press, 
    this.color = AppColors.kPrimaryColor, 
    this.textColor= Colors.white,
    required this.padin
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        child: Text(text,),

        style: TextButton.styleFrom(
            padding: EdgeInsets.all(padin),
            textStyle:   TextStyle(color: textColor,fontSize:    Responsive.of().height < 600
                ? Responsive.of().ip(por:2.7)
                : Responsive.of().ip(por: 2.1),  ),
            foregroundColor: textColor,
            backgroundColor:color,

            minimumSize:Size(Get.width* 0.33 , Get.height * 0.063) ,
            maximumSize:Size(Get.width* 0.4 , Get.height * 0.063) ,
            elevation: 8,

            shape:RoundedRectangleBorder( borderRadius: BorderRadius.all(Radius.circular(20.0) ))
        )  ,
        onPressed:press,
      ),
    );
  }
}
