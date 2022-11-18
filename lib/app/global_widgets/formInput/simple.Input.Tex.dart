// ignore_for_file: non_constant_identifier_names

import 'package:app_hazconta/app/global_widgets/simple.form.text.cover.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SimpleInputText extends StatelessWidget {
  final int iconPos;
  final double Width;
  final String initialValue;
  final String? hintText;
  final Function(String)? onChanged;
  final String? labelText;
  final String? Function(String?)? validator;
  final Widget? icon;
  final Color? backgroundColorIcon;
  final TextInputType? keyboardType;
  final bool currenciesActive;
  final bool digitsOnly;
  final bool readOnly;
  final bool enableInp;

  final List<TextInputFormatter>? inputFormatters;

  const SimpleInputText({
    Key? key,
    this.Width = 1,
    this.iconPos = 1,
    required this.initialValue,
    this.validator,
    this.onChanged,
    this.hintText,
    this.labelText,
    this.icon,
    this.backgroundColorIcon = Colors.white,
    this.keyboardType = TextInputType.text,
    this.currenciesActive = false,
    this.digitsOnly = false,
    this.inputFormatters,
    this.readOnly = false,
    this.enableInp = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleCoverFormText(
      width: Width,
      child: TextFormField(
        maxLines: null,
        initialValue: initialValue,
        textCapitalization: TextCapitalization.words,
        keyboardType: keyboardType,
        validator: validator,
        onChanged: onChanged,
        readOnly: readOnly,
        enabled: enableInp,
        inputFormatters: inputFormatters,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,

          icon: iconPos == 2 ? null : icon,
          suffixIcon: iconPos == 1
              ? null
              : CircleAvatar(
                  child: icon,



                  backgroundColor: backgroundColorIcon,
                ),
        ),
      ),
    );
  }
}
