import 'package:app_hazconta/app/global_widgets/text_field_container.dart';
import 'package:app_hazconta/app/theme/appColors.dart';
import 'package:flutter/material.dart';

class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  final String? Function(String?)? validators;
  final Key? keyValue;
  final String? initialValue;
  final double? widthDouble;
  final double? paddingHorizontal;
  final double? paddingVertical;
  final void Function(String)? onFieldSubmitted;
  final   bool   enableButtton  ;
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
    required this.enableButtton,
    this.validators,
    this.keyValue,
    this.initialValue,
    this.widthDouble,
    this.paddingHorizontal,
    this.paddingVertical,
    this.onFieldSubmitted,
  }) : super(key: key);

  @override
  _RoundedPasswordFieldState createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool _showPasssword = true;
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      paddingHorizontal: widget.paddingHorizontal,
      paddingVertical: widget.paddingVertical,
      widthDouble: widget.widthDouble ?? 0.8,
      child: TextFormField(
        textInputAction: TextInputAction.done,
        onFieldSubmitted: widget.onFieldSubmitted,
        key: widget.keyValue,
        initialValue: widget.initialValue,
        validator: widget.validators,
        obscureText: _showPasssword,
        onChanged: widget.onChanged,
        readOnly: !widget.enableButtton,
        enabled:widget.enableButtton ,
        decoration: InputDecoration(
          hintText: "Contraseña",
          icon: Icon(
            Icons.lock,
            color: AppColors.kPrimaryColor,
          ),
          suffixIcon: IconButton(
            alignment: Alignment.centerRight,
            onPressed: () {
              setState(() {
                _showPasssword = !_showPasssword;
              });
            },
            icon: Icon(
              _showPasssword ? Icons.visibility : Icons.visibility_off,
              color: AppColors.kPrimaryColor,
            ),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
