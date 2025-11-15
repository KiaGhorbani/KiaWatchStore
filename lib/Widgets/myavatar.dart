import 'package:flutter/material.dart';
import 'package:kia_watchstore/Components/text_style.dart';
import 'package:kia_watchstore/Extensions/sizedbox_extension.dart';
import 'package:kia_watchstore/Resources/dimens.dart';

class MyAvatar extends StatelessWidget {
  const MyAvatar({super.key, required this.avatarName});

  final String avatarName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),

          child: Image.asset("assets/icons/PNG/Profile Avatar.png"),
        ),
        MyDimens.medium.height,

        Text(avatarName, style: LightTextStyles.avatarText),
      ],
    );
  }
}
