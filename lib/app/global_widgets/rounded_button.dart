
import 'package:app_hazconta/app/theme/Responsive.dart';
import 'package:app_hazconta/app/theme/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback?  press;
  final Color color, textColor;
   final double padin;
  const RoundedButton({
    Key? key,
    required this.text, 
    this.press, 
    this.color = AppColors.kPrimaryColor, 
    this.textColor= Colors.white,
    this.padin=10.0
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      width: Get.width * 0.9,
      height: Responsive.of().height < 600
          ? Responsive.of().ip(por: 8)
          : Responsive.of().ip(por: 6),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 10 , horizontal: 10),
            backgroundColor: color,

          ),

          onPressed: press,

          child: Text(text, style: TextStyle(color: textColor,fontSize:Responsive.of().ip(por: 2.4) )),
        ),
      ),
    );
  }
}
