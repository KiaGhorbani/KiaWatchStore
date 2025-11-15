import 'package:flutter/material.dart';
import 'package:kia_watchstore/Extensions/sizedbox_extension.dart';
import 'package:kia_watchstore/Resources/colors.dart';
import 'package:kia_watchstore/Resources/dimens.dart';
import 'package:kia_watchstore/Resources/strings.dart';
import 'package:kia_watchstore/Widgets/mybutton.dart';
import 'package:kia_watchstore/Widgets/mytextfield.dart';

class SendOtpScreen extends StatelessWidget {
  const SendOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      backgroundColor: MyColors.enterNumberScreenScaffold,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/PNG/Logo.png"),
            (MyDimens.large * 2).height,
            MyTextField(
              label: MyStrings.enterNumber,
              hint: MyStrings.enterNumberHint,
              controller: controller,
            ),
            MyDimens.medium.height,
            MyElevatedButton(
              onPressed: () {  },
              buttonText: MyStrings.sendOtp,)
          ],
        ),
      ),
    );
  }
}
