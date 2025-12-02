import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kia_watchstore/Extensions/sizedbox_extension.dart';

import '../Components/text_style.dart';
import '../Resources/colors.dart';
import '../Resources/dimens.dart';

class MyBottomNavItem extends StatelessWidget {
  const MyBottomNavItem({
    super.key,
    required this.itemText,
    required this.itemIconPath,
    required this.isActive, required this.onTap,
  });

  final String itemText;
  final String itemIconPath;
  final bool isActive;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: Container(
        color: MyColors.bottomNav,
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                itemIconPath,
                colorFilter: ColorFilter.mode(
                  isActive
                      ? MyColors.bottomNavItemActive
                      : MyColors.bottomNavItemInActive,
                  BlendMode.srcIn,
                ),
              ),
              MyDimens.small.height,
              Text(
                itemText,
                style: isActive
                    ? LightTextStyles.bottomNavItemActive
                    : LightTextStyles.bottomNavItemInActive,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
