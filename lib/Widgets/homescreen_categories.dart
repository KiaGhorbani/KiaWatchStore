import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kia_watchstore/Components/text_style.dart';
import 'package:kia_watchstore/Extensions/sizedbox_extension.dart';
import 'package:kia_watchstore/Resources/dimens.dart';

class WatchCategory extends StatelessWidget {
  const WatchCategory({
    super.key,
    required this.catColor,
    required this.catPic,
    required this.catText,
    required this.onTap,
  });

  final List<Color> catColor;
  final String catPic;
  final String catText;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(MyDimens.small),
            height: size.height * .08,
            width: size.height * .08,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(MyDimens.large),
              gradient: LinearGradient(
                colors: catColor,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),

            child: SvgPicture.asset(catPic ),
          ),
          (MyDimens.small * .5).height,

          Text(
            catText,
            style: LightTextStyles.titleText.copyWith(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
