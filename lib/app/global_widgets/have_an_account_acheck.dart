import 'package:app_hazconta/app/theme/appColors.dart';
import 'package:flutter/material.dart';



class HaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final VoidCallback press;

  const HaveAnAccountCheck({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "¿Tienes una cuenta? ": "Ingrsa ",
          style: TextStyle(color: AppColors.kPrimaryColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            "Ingresa Aqui",
            style: TextStyle(color: AppColors.kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
