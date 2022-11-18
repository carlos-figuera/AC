import 'package:app_hazconta/app/global_widgets/text_field_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final Widget? icon;
  final TextInputType? type;
  final String? Function(String?)? validator;
  final ValueChanged<String> onChanged;
  final Function(String?)? onSaved;
  final Key? keyValue;
  final String? initialValue;
  final List<TextInputFormatter>? inputFormatters;
  final String? labelText;
  final double? widthDouble;
  final TextCapitalization? textCapitalizationValue;
  final TextInputAction? textInputAction;
  final   bool   enableButtton  ;
  final double? paddingHorizontal;
  final double? paddingVertical;
  const RoundedInputField({
    Key? key,
    required this.hintText,
    required this.onChanged,
      required this.enableButtton,
    this.textCapitalizationValue,
    this.icon,
    this.type,
    this.validator,
    this.onSaved,
    this.keyValue,
    this.initialValue,
    this.inputFormatters,
    this.labelText,
    this.widthDouble,
    this.paddingHorizontal,
    this.paddingVertical,
    this.textInputAction,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      paddingHorizontal: paddingHorizontal,
      paddingVertical: paddingVertical,
      widthDouble: widthDouble ?? 0.8,
      child: TextFormField(
        textInputAction: textInputAction,
        textCapitalization: textCapitalizationValue ?? TextCapitalization.none,
        inputFormatters: inputFormatters,
        initialValue: initialValue,
        onSaved: onSaved,
        key: keyValue,
       readOnly: !enableButtton,
       enabled:enableButtton ,
        validator: validator,
        onChanged: onChanged,
        keyboardType: type,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          border: InputBorder.none,
          icon: icon,
        ),
      ),
    );
  }
}
