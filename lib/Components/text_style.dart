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


  static TextStyle watchItemTitle = TextStyle(
    fontFamily: "dana",
    fontSize: 13,
    color: MyColors.textTitle,
  );


  static TextStyle watchItemCaption = TextStyle(
    fontFamily: "dana",
    fontSize: 13,
    color: MyColors.textTitle.withAlpha(150),
  );


  static TextStyle watchTabSelected = TextStyle(
    fontFamily: "dana",
    fontSize: 13,
    color: MyColors.textTitle,
  );

  static TextStyle watchTabUnSelected = TextStyle(
    fontFamily: "dana",
    fontSize: 13,
    color: MyColors.textTitle.withAlpha(125),
  );





  static TextStyle discountTimer = TextStyle(
    fontFamily: "dana",
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: MyColors.discountTimer,
  );




  static TextStyle oldPrice = TextStyle(
    fontFamily: "dana",
    fontSize: 13,
    color: MyColors.oldPrice,
    decoration: TextDecoration.lineThrough
  );




  static TextStyle bottomNavItemActive = TextStyle(
    fontFamily: "dana",
    fontSize: 12,
    color: MyColors.bottomNavItemActive,
  );

  static TextStyle amazing = TextStyle(
    fontFamily: "dana",
    fontSize: 22,
    color: MyColors.amazing,
    fontWeight: FontWeight.w700,
  );



  static TextStyle bottomNavItemInActive = TextStyle(
    fontFamily: "dana",
    fontSize: 12,
    color: MyColors.bottomNavItemInActive,
  );

  static TextStyle hint = TextStyle(
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


  static TextStyle addToCartButtonText = TextStyle(
    fontFamily: "dana",
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: MyColors.buttonText,
  );

}
