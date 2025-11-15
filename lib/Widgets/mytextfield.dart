import 'package:flutter/material.dart';
import 'package:kia_watchstore/Components/text_style.dart';
import 'package:kia_watchstore/Extensions/sizedbox_extension.dart';
import 'package:kia_watchstore/Resources/dimens.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    required this.label,
    this.suffixLabel = '',
    required this.hint,
    required this.controller,
    this.icon = const SizedBox(),
    this.textAlign = TextAlign.center,
    this.inputType,
  });

  final String label;
  final String suffixLabel;
  final String hint;
  final TextEditingController controller;
  final Widget icon;
  final TextAlign textAlign;
  final TextInputType? inputType;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(left: MyDimens.large, right: MyDimens.large),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              width: size.width * .87,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(suffixLabel, style: LightTextStyles.titleText),
                  Text(label, style: LightTextStyles.titleText),
                ],
              ),
            ),
            MyDimens.medium.height,
            SizedBox(
              height: size.height * .07,
              child: TextField(
                textAlign: textAlign,
                controller: controller,
                keyboardType: inputType,
                decoration: InputDecoration(
                  hintText: hint,
                  hintStyle: LightTextStyles.textFieldHint,

                  prefixIcon: icon,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
