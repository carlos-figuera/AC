import 'package:app_hazconta/app/theme/appColors.dart';
import 'package:flutter/material.dart';



class AlredyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final VoidCallback press;

  const AlredyHaveAnAccountCheck({
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
          login ? "¿No tienes una cuenta? ": "¿Ya tienes una cuenta? ",
          style: TextStyle(color: AppColors.kPrimaryColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Registrate aqui": "Ingresa Aqui",
            style: TextStyle(color: AppColors.kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
