import 'package:flutter/material.dart';

class SalesDropdownInput<T> extends StatelessWidget {
  final String hintText;
  final List<T> options;
  final T  value;
  final String Function(T)   getLabel;
  final void Function(T)  onChanged;

  SalesDropdownInput({
    this.hintText = 'Please select an Option',
    this.options = const [],
    required this.getLabel,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return FormField<T>(
      builder: (FormFieldState<T> state) {
        return InputDecorator(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                horizontal: 1.0, ),
           //    labelText: hintText,


            border: InputBorder.none,
          ),
          isEmpty: value == null || value == '',
         expands: false,
          child: DropdownButtonHideUnderline(
            child: DropdownButton<T>(
              value: value,
             // isDense: true,
                //isExpanded: true,

                icon:Icon(Icons.keyboard_arrow_down_sharp),
              borderRadius:BorderRadius.zero ,

              onChanged: (gf)
              {
                onChanged( gf!);
              },
              items: options.map((T value) {
                return DropdownMenuItem<T>(
                  value: value,
                  child: Text(getLabel(value),  style:  TextStyle(  fontSize:value.toString().length>13?12:14 , fontWeight:FontWeight.w700 ),  ),
                );
              }).toList(),
            ),

          ),
        );
      },
    );
  }
}