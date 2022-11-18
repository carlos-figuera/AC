
import 'package:flutter/material.dart';
import 'package:app_hazconta/app/theme/appColors.dart';
import 'package:get/get.dart';

class AppBarSelect extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final String ruta;


  AppBarSelect({
    Key? key,
    required this.title,
    required this.ruta,

  })  : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize; // default is 56.0

  @override
  _AppBarStateGeneral createState() => _AppBarStateGeneral(
        title: title

      );
}

class _AppBarStateGeneral extends State<AppBarSelect> {
  final String title;


  _AppBarStateGeneral({required this.title });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.kPrimaryColor,
      centerTitle: true,
      titleSpacing:0 ,
      leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Get.offAllNamed( widget.ruta);
          }),
      title: Text(title.toUpperCase()),

    );
  }
}
