

import 'package:app_hazconta/app/global_widgets/rounded_input_field.dart';
 import 'package:app_hazconta/app/modules/login/local_widgets/background.dart';
import 'package:app_hazconta/app/modules/login/login_controller.dart';
import 'package:app_hazconta/app/theme/appTextStyles.dart';
import 'package:app_hazconta/app/theme/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../global_widgets/rounded_button.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GetBuilder<LoginController>(
      id: 'formLogin',
      builder: (_) => Scaffold(
        body: SafeArea(
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: Background(
              child: ListView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(30.0),
                  children: <Widget>[
                    Form(
                      key: _.formKey,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                             'ENTRAR EN AC',
                            style: AppTextStyles.titlePage,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SvgPicture.asset(
                              "assets/drivericon/inicio.svg",
                              height: size.height * 0.35,
                            ),
                          ),
                          RoundedInputField(
                            textInputAction: TextInputAction.next,
                            enableButtton:true ,
                            hintText: "Nombre de Usuario ",
                            type: TextInputType.text,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(30),
                            ],
                            onChanged: _.onNumberChanged,
                            validator: (v) =>
                                _.validates.validateLarge(name: "Nombre de Usuario ", value: v),

                          ),
                          SizedBox(height: size.height * 0.03),

                          SizedBox(height: size.height * 0.02),
                          RoundedButton(
                            color: _.isLoading
                                ? Colors.grey
                                : AppColors.kPrimaryColor,
                            text:  "Entrar",
                            press: () async {
                           _.goHome();

                            },
                          ),
                          SizedBox(height: size.height * 0.02),
                          SizedBox(height: size.height * 0.02),
                          SizedBox(height: size.height * 0.02),
                          //ChangePassword()
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
