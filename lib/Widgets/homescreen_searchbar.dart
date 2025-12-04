import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Components/text_style.dart';
import '../Resources/colors.dart';
import '../Resources/dimens.dart';
import '../Resources/strings.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(MyDimens.medium),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 52,
          width: double.infinity,
          decoration: BoxDecoration(
            color: MyColors.searchBar,
            borderRadius: BorderRadius.circular(60),
            boxShadow: [
              BoxShadow(
                color: MyColors.shadow,
                offset: Offset(0, 3),
                blurRadius: 4,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SvgPicture.asset("assets/icons/SVG/Search.svg"),
              Text(MyStrings.search, style: LightTextStyles.hint),
              Image.asset("assets/images/PNG/Logo.png"),
            ],
          ),
        ),
      ),
    );
  }
}
