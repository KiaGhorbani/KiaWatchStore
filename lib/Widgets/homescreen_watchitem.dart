import 'package:flutter/material.dart';
import 'package:kia_watchstore/Components/text_style.dart';
import 'package:kia_watchstore/Extensions/int_extension.dart';
import 'package:kia_watchstore/Extensions/sizedbox_extension.dart';
import 'package:kia_watchstore/Resources/colors.dart';

import '../Resources/dimens.dart';

class WatchItem extends StatelessWidget {
  const WatchItem({
    super.key,
    required this.watchName,
    required this.price,
    this.oldPrice = 0,
    this.discount = 0,
    this.time = 0,

  });

  final String watchName;
  final int oldPrice;
  final int price;
  final int discount;
  final int time;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: MyDimens.small, left: MyDimens.small),
      margin: EdgeInsets.all(MyDimens.medium),
      height: 289,
      width: 162,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(MyDimens.medium),
        gradient: LinearGradient(
          colors: MyColors.watchItem,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: [
          Image.asset("assets/images/PNG/Watch2.png"),
          Align(
            alignment: Alignment.topRight,
            child: Text(watchName, style: LightTextStyles.watchItemTitle),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    "${price.numSeparator} تومان",
                    textDirection: TextDirection.rtl,
                    style: LightTextStyles.titleText,
                  ),
                  Visibility(
                      visible: discount > 0 && oldPrice > 0 ? true : false,
                      child: Text(oldPrice.numSeparator, style: LightTextStyles.oldPrice)),
                ],
              ),
              Visibility(
                visible: discount > 0 ? true : false,
                child: Container(
                  height: 30,
                  width: 50,
                  padding: EdgeInsets.only(
                    left: MyDimens.medium,
                    top: MyDimens.small * .7,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: Colors.red,
                  ),
                  child: Text("$discount %", style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),

          MyDimens.small.height,

         time > 0 ? Visibility(
            visible: discount > 0 ? true : false,
            child: Container(
              height: 2,
              width: double.infinity,
              color: MyColors.discountBorder,
            ),
          ):SizedBox(),
          time > 0 ? Visibility(
            visible: discount > 0 ? true : false,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("09:26:22", style: LightTextStyles.discountTimer),
            )
          ): SizedBox()
        ],
      ),
    );
  }
}
