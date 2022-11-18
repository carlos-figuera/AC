import 'package:flutter/material.dart';
import 'package:app_hazconta/app/theme/appColors.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final String ruta;
  final SearchDelegate<dynamic> delegate;
  CustomAppBar({
    Key? key,
    required this.title,
    required this.delegate,
    required this.ruta,
  })  : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize; // default is 56.0

  @override
  _CustomAppBarState createState() => _CustomAppBarState(
        delegate: delegate,
        title: title,
    ruta: ruta
      );
}

class _CustomAppBarState extends State<CustomAppBar> {
  final String title;
  final String ruta;
  final SearchDelegate<dynamic> delegate;
  _CustomAppBarState({
    required this.title,
    required this.delegate,
    required this.ruta,
  });
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
      actions: [
        MaterialButton(
          minWidth: 40,
          onPressed: () => showSearch(
            context: context,
            delegate: delegate,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.search,
                color: Colors.white,
              ),
              Text(
                'Buscar',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ],
    );
  }
}
