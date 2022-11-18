import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:get/get.dart';
class Responsive {
  final double width, height, inch;
  final Orientation orientation;

  Responsive(
      {required this.width, required this.height, required this.inch, required this.orientation});

  factory Responsive.of()
  {

     final screenOri = Get.mediaQuery.orientation;
     final size=Get.size;


     final inch =math.sqrt(math.pow(size.width, 2) +math.pow(size.height, 2)  );

    return Responsive(width: size.width, height: size.height, inch: inch,orientation:screenOri );
  }

  double wd({required double por})
  {
    return this.width * por/100;
  }
  double hd({required double por})
  {
    return this.height * por/100;
  }
  double ip({required double por})
  {

  //  print(" $por   ${this.height} / ${this.width}");
    //print(this.inch * por/100.ceil());

    return this.inch * por/100.round();
  }

  Orientation screenOri( )
  {

    return this.orientation;
  }
}
