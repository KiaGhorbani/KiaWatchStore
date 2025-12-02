//Text Styles For All Text Widgets

import 'package:kia_watchstore/Resources/colors.dart';
import 'package:flutter/material.dart';

class LightTextStyles {
  LightTextStyles._();

  static TextStyle titleText = TextStyle(
    fontFamily: "dana",
    fontSize: 13,
    fontWeight: FontWeight.w300,
    color: MyColors.textTitle,
  );

  static TextStyle bottomNavItemActive = TextStyle(
    fontFamily: "dana",
    fontSize: 12,
    color: MyColors.bottomNavItemActive,
  );

  static TextStyle bottomNavItemInActive = TextStyle(
    fontFamily: "dana",
    fontSize: 12,
    color: MyColors.bottomNavItemInActive,
  );

  static TextStyle textFieldHint = TextStyle(
    fontFamily: "dana",
    fontSize: 11,
    fontWeight: FontWeight.w300,
    color: MyColors.textFieldHint,
  );

  static TextStyle avatarText = TextStyle(
    fontFamily: "dana",
    fontSize: 11,
    fontWeight: FontWeight.w400,
    color: MyColors.textTitle,
  );

  static TextStyle buttonText = TextStyle(
    fontFamily: "dana",
    fontSize: 15,
    fontWeight: FontWeight.w300,
    color: MyColors.buttonText,
  );
}
