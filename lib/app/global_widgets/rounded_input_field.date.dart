import 'package:app_hazconta/app/global_widgets/text_field_container.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RoundedInputFieldDate extends StatelessWidget {
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

  final double? paddingHorizontal;
  final double? paddingVertical;
  const RoundedInputFieldDate({
    Key? key,
    required this.hintText,
    required this.onChanged,
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
      child:

      DateTimePicker(
        type: DateTimePickerType.date,
        initialValue: initialValue,
        firstDate: DateTime(1970),
        lastDate: DateTime(2100),
        dateLabelText:labelText ,
        dateHintText:hintText ,
        onChanged: onChanged,
        validator: validator,
        textInputAction: textInputAction,
        inputFormatters: inputFormatters,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          border: InputBorder.none,
          icon: icon,
        ),
      )



    );
  }
}
