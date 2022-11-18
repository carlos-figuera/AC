
import 'package:flutter/material.dart';

class SimpleCoverFormText extends StatelessWidget {
  const SimpleCoverFormText({
    Key? key,
    required this.child,
    required this.width,
    this.paddingHorizontal,
    this.paddingVertical,
  }) : super(key: key);

  final Widget child;
  final double width;
  final double? paddingHorizontal;
  final double? paddingVertical;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: paddingHorizontal ?? 20,
        vertical: paddingVertical ?? 5,
      ),
      width: size.width * width,
      child: child,
    );
  }
}