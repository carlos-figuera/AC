
import 'package:app_hazconta/app/routes/app_routes.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../global_widgets/validate.dart';

class LoginController extends GetxController {
 // final AuthenticationRepository _authenticationRepository = Get.find<AuthenticationRepository>();
 // final LocalAuthRepository _localAuthRepository =Get.find<LocalAuthRepository>();
 // final LocalUser _localUser = Get.find<LocalUser>();
  Validations validates = Validations();



  String ?number = '', pass = ' ';
  bool _isLoading = false;
  bool registerLogon = false;
  bool get isLoading => _isLoading;
  GlobalKey<FormState> formKey = GlobalKey();

  bool enableCodeLogin=false;
  bool enableCodeRegister=false;
  set isLoading(bool value) {
    _isLoading = value;
    update(['formLogin']);
  }

  void onNumberChanged(String text) {
    number = text;
  }



  void onPassChanged(String text) {
    pass = text;
  }

  String? onPassValidator(String? value) {
    if (value != null && value.length >= 1) return null;
    return 'Ingresa una contraseña valida';
  }

  Future<void> validateForm(BuildContext context) async {
    if (isLoading == true) return null;

    FocusScope.of(context).unfocus();
    if (formKey.currentState?.validate() ?? false) {

    }
  }



  // Peticiones al servidor

  getCodeLogin()
  {
    enableCodeLogin=true;
    update(["formLogin"]);
  }
  getCodeRegister()
  {
    enableCodeRegister=true;
    update(["RegisterPage"]);
  }
  //navegacion
  goHome(){
    Get.toNamed(AppRoutes.HOME);
  }
  goLigin(){
    Get.back();
  }
  goResgister(){
    Get.toNamed(AppRoutes.REGISTER);
  }

  onChangelogin(){
    registerLogon=!registerLogon;

    update(["formLogin"]);
  }


}