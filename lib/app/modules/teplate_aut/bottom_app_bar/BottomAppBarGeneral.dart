

import 'package:flutter/material.dart';

Widget barra({ required Text titleButton1,
  required Text titleButton2,
  void Function()? button2,
  void Function()? button1,
  required Icon iconButton1,
  required Icon iconButton2,
  required bool visibleButtonBar }) {
  return BottomAppBar(

    shape: CircularNotchedRectangle(),
    notchMargin: 10,
    child: visibleButtonBar ? Container(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MaterialButton(
                minWidth: 40,
                onPressed: button1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ iconButton1, titleButton1],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MaterialButton(
                minWidth: 40,
                onPressed: button2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ iconButton2, titleButton2],
                ),
              ),
            ],
          ),
        ],
      ),
    ) : SizedBox(),

  );
}