import 'package:flutter/material.dart';
import 'package:kia_watchstore/Components/text_style.dart';
import 'package:kia_watchstore/Extensions/sizedbox_extension.dart';
import 'package:kia_watchstore/Resources/dimens.dart';
import 'package:kia_watchstore/Widgets/appbar_my.dart';
import 'package:kia_watchstore/Widgets/watchscreen_addtocart.dart';
import 'package:kia_watchstore/Widgets/watchscreen_tabview.dart';

class WatchScreen extends StatelessWidget {
  const WatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          size: size,
          appBarText: "ساعت شیائومی Mi Watch Smart Lite",
          isWatchScreen: true,
          isMainScreen: false,
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/PNG/Watch2.png",
                    fit: BoxFit.cover,
                    width: size.width,
                  ),

                  Container(
                    padding: EdgeInsets.all(MyDimens.medium),
                    margin: EdgeInsets.all(MyDimens.medium),
                    width: size.width,
                    height: size.height,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(MyDimens.medium),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "بنسر",
                          style: LightTextStyles.watchItemTitle,
                          textDirection: TextDirection.rtl,
                        ),
                        Text(
                          "مسواک بنسر مدل اکسترا با برس متوسط 3 عددی",
                          style: LightTextStyles.watchItemCaption,
                          textDirection: TextDirection.rtl,
                        ),
                        10.height,
                        Divider(),
                        WatchScreenTabview(size: size),
                        60.height,
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                color: Colors.white,
                height: 60,
                width: size.width,
                child: GestureDetector(
                  onTap: () {
                    //Add To Cart
                  },

                  child: WatchScreenAddToCart(size: size, oldPrice: 122000, price: 63500, discount: 20,)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
