import 'package:app_hazconta/app/theme/appColors.dart';
        import 'package:flutter/material.dart';


class FloatingActionButtonidget extends StatefulWidget {
    final Text titleButton1;
    final void Function()? button1 ;
    final Icon  iconButton1;
    final bool visibleButtonBar  ;


    FloatingActionButtonidget({
        Key? key,
                required this.titleButton1,
                required this.button1,
                required this.iconButton1,
                this.visibleButtonBar=true,
    }) : super(key: key);

    @override
    _SelectEntityPageState createState() => _SelectEntityPageState();
}

class _SelectEntityPageState extends State<FloatingActionButtonidget> {
    @override
    Widget build(BuildContext context) {

        return widget.visibleButtonBar? FloatingActionButton(
          backgroundColor: AppColors.kPrimaryColor,
          child: widget.iconButton1,
          onPressed: widget.button1,

        ):SizedBox()   ;
    }
}

