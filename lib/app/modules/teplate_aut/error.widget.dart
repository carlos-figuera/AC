import 'package:app_hazconta/app/theme/appColors.dart';
import 'package:flutter/material.dart';

class ErrorAlert extends StatelessWidget {
  final String error;
  final String detail;
  const ErrorAlert({
    Key? key,
    required this.error,
    required this.detail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.all(10),
      title: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            Icons.error_outline,
          ),
          Text(" Error $error"),
        ],
      ),
      content: Text(detail),
      actions: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: AppColors.kPrimaryColor,

            textStyle: TextStyle(fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Continuar'),
            ],
          ),
        ),
        // TextButton(
        //   onPressed: () => Navigator.pop(context),
        //   child: Text('ok'),
        // ),
      ],
    );
  }
}
