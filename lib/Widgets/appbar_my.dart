import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kia_watchstore/Extensions/sizedbox_extension.dart';
import 'package:kia_watchstore/Resources/dimens.dart';
import 'package:kia_watchstore/Widgets/cart_icon.dart';
import '../Resources/colors.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    super.key,
    required this.size,
    required this.appBarText,
    required this.isWatchScreen,
    required this.isMainScreen,
  });

  final Size size;
  final String appBarText;
  final bool isWatchScreen;
  final bool isMainScreen;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size(size.width, size.height * .1),

      child: Container(
        height:size.height * .05 ,
        decoration: BoxDecoration(
          color: MyColors.appBar,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
          border: Border.all(color: Colors.white),
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 1, offset: Offset(1, 0)),
          ],
        ),
        child: isMainScreen
            ? Padding(
              padding: const EdgeInsets.all(MyDimens.medium),
              child: Text(appBarText , textAlign: TextAlign.end,),
            )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //TODO navigate to cart screen
                  CartIcon(count: 2, isActive: true, isBottomNav: false,),
                  isWatchScreen
                      ? SizedBox()
                      : Row(
                          children: [
                            Text(appBarText),
                            MyDimens.small.width,
                            SvgPicture.asset(
                              "assets/icons/SVG/Filtered Icon.svg",
                            ),
                          ],
                        ),

                  Row(
                    children: [
                      isWatchScreen
                          ? Text(
                              "ساعت شیائومی Mi Watch Lite",
                              textDirection: TextDirection.rtl,
                            )
                          : SizedBox(),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: SvgPicture.asset("assets/icons/SVG/Exit.svg"),
                      ),
                    ],
                  ),
                ],
              ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(size.height * 0.1);
}
