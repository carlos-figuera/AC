import 'package:app_hazconta/app/theme/appColors.dart';
import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  final double widthDouble;
  final double? paddingHorizontal;
  final double? paddingVertical;
  const TextFieldContainer({
    Key? key,
    required this.child,
    required this.widthDouble,
    this.paddingHorizontal,
    this.paddingVertical,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: paddingHorizontal ?? 20,
        vertical: paddingVertical ?? 5,
      ),
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * widthDouble,
      decoration: BoxDecoration(
        color: AppColors.kPrimaryLightColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}