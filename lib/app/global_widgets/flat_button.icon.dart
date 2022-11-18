
import 'package:app_hazconta/app/theme/Responsive.dart';
import 'package:app_hazconta/app/theme/appTextStyles.dart';
import 'package:app_hazconta/app/theme/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class FlatButtonIcon extends StatelessWidget {
  final String text;
  final VoidCallback?  press;
  final Color color ;
  final IconData icon;
  const FlatButtonIcon({
    Key? key,
    required this.text, 
    this.press, 
    this.color = AppColors.kPrimaryColor,
    required this.icon
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      width: Get.width * 0.9,
      height: Responsive.of().height < 600
          ? Responsive.of().ip(por: 8)
          : Responsive.of().ip(por: 6),
      child:   TextButton.icon(
        icon: Icon(
         icon,
          color: AppColors.kPrimaryColor,
          size: 30,
        ),
        label: Row(
          children: [
            Expanded(
              child: Text("$text",
                  textAlign: TextAlign.start),
            )
          ],
        ),
        style: TextButton.styleFrom(
          textStyle: AppTextStyles.titleButton,
          maximumSize: Size(Get.width * 0.9, Get.height * 0.08),
          minimumSize: Size(Get.width * 0.9, Get.height * 0.08),
        ),
        onPressed:press,
      ),
    );
  }
}
