import 'package:flutter/material.dart';
import 'package:kia_watchstore/Extensions/sizedbox_extension.dart';

import '../Components/text_style.dart';
import '../Resources/colors.dart';

class SignUpAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SignUpAppBar({super.key, required this.size, required this.appBarText});

  final Size size;
  final String appBarText;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size(size.width, size.height * .1),

      child: Container(
        color: MyColors.appBar,
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_new),
            ),
            310.width,

            Text(appBarText, style: LightTextStyles.titleText),
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(size.height * 0.1);
}
