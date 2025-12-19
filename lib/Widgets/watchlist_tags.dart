import 'package:flutter/material.dart';
import 'package:kia_watchstore/Components/text_style.dart';
import 'package:kia_watchstore/Resources/dimens.dart';

class TagList extends StatelessWidget {
  const TagList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: MyDimens.medium),
      child: SizedBox(
        height: 24,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          reverse: true,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: MyDimens.small),
              padding: EdgeInsets.symmetric(
                horizontal: MyDimens.large,
                vertical: 2,
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(MyDimens.large),
              ),
              child: Text(
                "پتک فلیپ",
                style: LightTextStyles.titleText.copyWith(color: Colors.white),
              ),
            );
          },
        ),
      ),
    );
  }
}
