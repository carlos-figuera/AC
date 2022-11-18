
import 'package:app_hazconta/app/modules/teplate_aut/success.widget.dart';
import 'package:get/get.dart';

import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Validations {
  final StringBuffer newText = StringBuffer();

  bool isNumeric(String s) {
    // ignore: unnecessary_null_comparison
    if (s == null) {
      return false;
    }
    return double.tryParse(s) != null;
  }

  String? onNombre(String? value) {
    String patternCorta =
        r"^[\w'\-,.][^0-9_!¡?÷?¿/\\+=@#$%ˆ&*(){}|~<>;:[\]]{2,}$";
    RegExp regExpCorta = new RegExp(patternCorta);

    if (!regExpCorta.hasMatch(value!)) {
      return 'Pon el nombre completo 👀';
    } else {
      return null;
    }
  }




  String? validateLarge({  String  ?value,   String ?name}) {
    if (value!.length > 2) {
      return null;
    } else {
      return 'Agrega $name';
    }
  }
  String? validateLargeEmpy({  String? value, required String name}) {
    if (value!.length > 0) {
      return null;
    }
    else {
      return 'Agrega $name';
    }
  }

  String? validateLargeAndDiferent(
      {String? valueTo, required String name, required String valueFrom}) {
    if (valueTo!.length > 2 && valueTo != valueFrom) {
      return null;
    } else {
      return 'Agrega $name';
    }
  }

  String? areEqual({required String nameTrue, String? value, required String fieldName}) {
    final dto = nameTrue.toLowerCase().trim();
    final user = value?.toLowerCase().trim();
    print(dto);
    print(user);
    if (value!.length <= 2) {
      return 'Para eliminarlo por favor escribe: $nameTrue';
    }
    if (dto == user) {
      return null;
    } else {
      return 'El $fieldName a eliminar no es correcto';
    }
  }

  bool tieneDocumento = false;


  //Validacion de correo opcional usado en el registro completo
  onEmailValidator(   String value  ) {
    //Si el campo correo no esta vacio,
    if(value .isNotEmpty)
    {
      if (!GetUtils.isEmail(value))
        return "Correo no valido";
      else
        return null;
    } else
    {
      return null;
    }
  }


  bool nupAfp = true;
  //verifica si el nup fue ingresado
  Future<bool>  verificaAfpNup({required String afpType ,required String nup }) async {

    print(afpType);
    print(nup);
    if(afpType.isNotEmpty && nup.isNotEmpty )
    {
      nupAfp = true;
    } else  if(afpType.isEmpty && nup.isEmpty )
    {
      nupAfp = true;
    } else
      {
        alertasAviso(
            title: "Documento no valido",
            body:
            "Los campos  N.U.P y fondo de pensiones están vinculados. Si seleccionas un valor en el N.U.P, también debes elegir un tipo de fondo de pensión y viceversa. ",
            cerrar: () {
              Get.back();
            });
        nupAfp = false;
      }

    return nupAfp;
  }

  var maskFormatter = new MaskTextInputFormatter(mask: '####-##-##', filter: { "#": RegExp(r'[0-9]') });

  String? onPassValidator(String? value,String? name) {
    if (value != null && value.length >= 1) return null;
    return 'Ingresa una contraseña valida';
  }
}
