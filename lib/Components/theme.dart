//Project Theme

import 'package:flutter/material.dart';
import 'package:kia_watchstore/Resources/colors.dart';
import 'package:kia_watchstore/Resources/dimens.dart';

class MyTheme {
  MyTheme._();

  static ThemeData lightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      iconTheme: IconThemeData(color: Colors.black),
      primaryColor: MyColors.primaryColor,
      scaffoldBackgroundColor: MyColors.enterNumberScreenScaffold,
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.focused)) {
            return MyColors.textFieldFocused;
          } else {
            return MyColors.textFieldUnfocused;
          }
        }),
        contentPadding: EdgeInsets.all(MyDimens.medium),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(MyDimens.medium),
          borderSide: BorderSide(color: MyColors.primaryColor),
        ),
      ),
    );
  }
}
