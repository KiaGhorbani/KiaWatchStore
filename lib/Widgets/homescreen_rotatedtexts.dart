import 'package:flutter/material.dart';
import 'package:kia_watchstore/Components/text_style.dart';
import 'package:kia_watchstore/Extensions/sizedbox_extension.dart';
import 'package:kia_watchstore/Resources/dimens.dart';
import 'package:kia_watchstore/Resources/strings.dart';

class MyRotatedText extends StatelessWidget {
  const MyRotatedText({super.key, required this.watchListTitle, required this.onTap});
  final String watchListTitle;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RotatedBox(
        quarterTurns: -1,
        child: Column(
          children: [
            GestureDetector(

              onTap: onTap,
              child: Row(
                children: [
                  Icon(Icons.arrow_circle_up),
                  MyDimens.small.width,
                  Text(MyStrings.seeAll),
                ],
              ),
            ),

            MyDimens.medium.height,

            Text(watchListTitle , style: LightTextStyles.amazing,),
          ],
        ),
      ),
    );
  }
}
