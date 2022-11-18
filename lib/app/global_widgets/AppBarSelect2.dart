import 'package:flutter/material.dart';
import 'package:app_hazconta/app/theme/appColors.dart';

class AppBarSelect2 extends StatefulWidget implements PreferredSizeWidget {
  final String title;


  AppBarSelect2({
    Key? key,
    required this.title,

  })  : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize; // default is 56.0

  @override
  _AppBarStateGeneral createState() => _AppBarStateGeneral(title: title);
}

class _AppBarStateGeneral extends State<AppBarSelect2> {
  final String title;

  _AppBarStateGeneral({required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.kPrimaryColor,
      centerTitle: true,
      titleSpacing: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
          size: 0,
        ),
        enableFeedback: false,
        onPressed: null,
      ),
      title: Text(title.toUpperCase()),
    );
  }
}
