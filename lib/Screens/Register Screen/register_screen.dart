import 'package:flutter/material.dart';
import 'package:kia_watchstore/Extensions/sizedbox_extension.dart';
import 'package:kia_watchstore/Resources/colors.dart';
import 'package:kia_watchstore/Resources/dimens.dart';
import 'package:kia_watchstore/Resources/strings.dart';
import 'package:kia_watchstore/Routes/route_names.dart';
import 'package:kia_watchstore/Widgets/appbar_signup.dart';
import 'package:kia_watchstore/Widgets/myavatar.dart';
import 'package:kia_watchstore/Widgets/mybutton.dart';
import 'package:kia_watchstore/Widgets/mytextfield.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController controller = TextEditingController();
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColors.signUpScreenScaffold,
        appBar: SignUpAppBar(size: size, appBarText: MyStrings.register),
        body: SingleChildScrollView(
          child: Column(
            children: [
              MyDimens.large.height,
              MyAvatar(avatarName: MyStrings.chooseProfilePic),
              (MyDimens.large * 1.4).height,

              MyTextField(
                label: MyStrings.fullName,
                hint: MyStrings.fullNameHint,
                controller: controller,
              ),
              MyDimens.medium.height,
              MyTextField(
                label: MyStrings.telephoneNumber,
                hint: MyStrings.telephoneNumberHint,
                controller: controller,
              ),
              MyDimens.medium.height,
              MyTextField(
                label: MyStrings.address,
                hint: MyStrings.addressHint,
                controller: controller,
              ),
              MyDimens.medium.height,
              MyTextField(
                label: MyStrings.postalCode,
                hint: MyStrings.postalCodeHint,
                controller: controller,
              ),
              MyDimens.medium.height,
              MyTextField(
                label: MyStrings.location,
                hint: MyStrings.locationHint,
                controller: controller,
                icon: Icon(Icons.location_on_outlined),
              ),
              MyDimens.medium.height,

              MyElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, ScreenNames.mainScreen);
                },
                buttonText: MyStrings.register,
              ),
              MyDimens.large.height,
            ],
          ),
        ),
      ),
    );
  }
}
