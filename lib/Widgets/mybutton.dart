import 'package:flutter/material.dart';
import 'package:kia_watchstore/Components/button_style.dart';
import 'package:kia_watchstore/Components/text_style.dart';


class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
  });

  final void Function()? onPressed;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * .07,
      width: size.width * .87,
      child: ElevatedButton(
        onPressed: onPressed,
        style: MyButtonStyle.myButtonStyle,
        child: Text(buttonText, style: LightTextStyles.buttonText),
      ),
    );
  }
}
