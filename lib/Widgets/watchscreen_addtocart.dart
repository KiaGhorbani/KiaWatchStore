import 'package:flutter/material.dart';
import 'package:kia_watchstore/Extensions/int_extension.dart';

import '../Components/text_style.dart';
import '../Resources/colors.dart';
import '../Resources/dimens.dart';

class WatchScreenAddToCart extends StatelessWidget {
  const WatchScreenAddToCart({
    super.key,
    required this.size,
    required this.oldPrice,
    required this.price,
    required this.discount,
  });

  final Size size;
  final int oldPrice;
  final int price;
  final int discount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
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
              ),
              Visibility(
                visible: discount > 0 ? true : false,
                child: Container(
                  height: 20,
                  width: 45,
                  margin:EdgeInsets.all(16) ,
                  padding: EdgeInsets.only(
                    left: MyDimens.small,
                    top: MyDimens.small * .2,

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



        ],),


        Container(
          margin: EdgeInsets.symmetric(horizontal: MyDimens.large),
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 3),
          width: size.width / 3.8,
          height: 30,
          decoration: BoxDecoration(
            color: MyColors.addToCartButton,
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          child: Text(
            "افزودن به سبد خرید",
            style: LightTextStyles.addToCartButtonText,
          ),
        ),







      ],
    );
  }
}
