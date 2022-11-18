import 'package:flutter/material.dart';
import 'package:app_hazconta/app/theme/appColors.dart';
import 'package:get/get.dart';

class AppBarGeneral extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final String ruta;
  final void Function() onPressed;

  AppBarGeneral({
    Key? key,
    required this.title,
    required this.ruta,
    required this.onPressed,
  })  : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize; // default is 56.0

  @override
  _AppBarStateGeneral createState() => _AppBarStateGeneral(
        title: title,
        onPressed: onPressed,
      );
}

class _AppBarStateGeneral extends State<AppBarGeneral> {
  final String title;
  final void Function() onPressed;

  _AppBarStateGeneral({required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.kPrimaryColor,
      excludeHeaderSemantics: true,
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
      actions: [
        MaterialButton(
          minWidth: 17,

          onPressed: onPressed,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.save,
                color: Colors.white,
              ),
              Text(
                'Guardar',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        )
      ],
    );
  }
}
