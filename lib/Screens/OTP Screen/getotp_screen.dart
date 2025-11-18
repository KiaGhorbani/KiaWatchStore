import 'package:flutter/material.dart';
import 'package:kia_watchstore/Extensions/sizedbox_extension.dart';
import 'package:kia_watchstore/Resources/dimens.dart';
import 'package:kia_watchstore/Resources/strings.dart';
import 'package:kia_watchstore/Widgets/mybutton.dart';
import 'package:kia_watchstore/Widgets/mytextfield.dart';

import '../../Resources/colors.dart';
import '../../Routes/route_names.dart';

class GetOtpScreen extends StatelessWidget {
  const GetOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      backgroundColor: MyColors.enterOtpScreenScaffold,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/PNG/Logo.png"),
            (MyDimens.medium * 2).height,
            Text(MyStrings.otpSent.replaceAll(MyStrings.replace, "09394422262")),
            TextButton(onPressed: () {
              
            }, child: Text(MyStrings.wrongNumber)

            ),
            (MyDimens.small * 2).height,
            MyTextField(
              label: MyStrings.enterOtp,
              hint: MyStrings.enterOtpHint,
              controller: controller,

            ),
            MyElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, ScreenNames.registerScreen);
              },
              buttonText: MyStrings.next,)
          ],
        ),
      ),
    );
  }
}
