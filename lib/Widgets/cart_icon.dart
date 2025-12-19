import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kia_watchstore/Components/text_style.dart';


import '../Resources/colors.dart';

class CartIcon extends StatelessWidget {
  const CartIcon({
    super.key,
    required this.count,
    required this.isActive,
    required this.isBottomNav,
  });

  final int count;
  final bool isActive;
  final bool isBottomNav;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        isBottomNav
            ? SvgPicture.asset(
                "assets/icons/SVG/CartPage Icon.svg",
                colorFilter: ColorFilter.mode(
                  isActive
                      ? MyColors.bottomNavItemActive
                      : MyColors.bottomNavItemInActive,
                  BlendMode.srcIn,
                ),
              )
            : IconButton(
                onPressed: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) {
                  //       return CartScreen();
                  //     },
                  //   ),
                  // );
                },

                icon: SvgPicture.asset(
                  "assets/icons/SVG/CartPage Icon.svg",
                  colorFilter: ColorFilter.mode(
                    isActive
                        ? MyColors.bottomNavItemActive
                        : MyColors.bottomNavItemInActive,
                    BlendMode.srcIn,
                  ),
                ),
              ),

        Positioned(
          left: isBottomNav ? 15 : 25,
          top: isBottomNav ? 5 : 10,
          child: Visibility(
            visible: count > 0 ? true : false,
            child: Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),

              child: Center(
                child: Text(
                  count.toString(),
                  style: LightTextStyles.titleText.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
