// ignore_for_file: non_constant_identifier_names
import 'package:app_hazconta/app/theme/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SimpleInputDoc extends StatelessWidget {
  final double Width;
  final String initialValue;
  final String? hintText;
  final Function(String)? onChanged;
  final Function( )? onSave;
  final int  ? id;
  final String? labelText;
  final String? Function(String?)? validator;
  final Widget? icon;
  final TextInputType? keyboardType;
  final bool currenciesActive;
  final bool digitsOnly;
  final bool readOnly;
  final List<TextInputFormatter>? inputFormatters;

  const SimpleInputDoc({
    Key? key,
    this.Width = 1,
    required this.initialValue,
    this.validator,
    this.onChanged,
    this.onSave,
    this.hintText,
    this.labelText,
    this.icon,
    this.keyboardType = TextInputType.text,
    this.currenciesActive = false,
    this.digitsOnly = false,
    this.readOnly=true,
    this.inputFormatters,
    this.id,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: TextFormField(
          maxLines: null,
          initialValue: initialValue,
          textCapitalization: TextCapitalization.words,
          keyboardType: keyboardType,
          validator: validator,
          onChanged: onChanged,
          onTap: onSave,
          autovalidateMode:AutovalidateMode.always ,
          inputFormatters: inputFormatters,
          readOnly:readOnly ,

          decoration: InputDecoration(
            hintText: hintText,
            labelText: labelText,
            icon: icon,
            suffixIcon:id!=null? Icon(Icons.edit_sharp,color: AppColors.kPrimaryColor):Icon(Icons.post_add_sharp,color: AppColors.kAinactiColor) ,
          ), ),
      );
  }
}
