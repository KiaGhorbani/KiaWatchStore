//Button Styles For All Buttons
import 'package:flutter/material.dart';
import 'package:kia_watchstore/Resources/colors.dart';
import 'package:kia_watchstore/Resources/dimens.dart';

class MyButtonStyle {
  MyButtonStyle._();

  static ButtonStyle myButtonStyle = ButtonStyle(
    shape: WidgetStatePropertyAll(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(MyDimens.medium),
      ),
    ),
    backgroundColor: WidgetStatePropertyAll(MyColors.button),


  );
}
