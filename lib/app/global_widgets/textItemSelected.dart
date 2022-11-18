
 import 'package:app_hazconta/app/theme/appTextStyles.dart';
 import 'package:app_hazconta/app/theme/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class TextItenSelected extends StatelessWidget {
  final String text;
  final Color textColor;
   final double padin;
  const TextItenSelected({
    Key? key,
    required this.text,
    this.textColor= AppColors.kPrimaryColor,
    this.padin=10.0
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      width: Get.width * 0.9,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child:Text(text, style: AppTextStyles.subTitleBottomSheet,textAlign:TextAlign.center , )
      ),
    );
  }
}
