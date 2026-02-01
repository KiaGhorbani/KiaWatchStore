import 'package:flutter/material.dart';
import 'package:kia_watchstore/Extensions/int_extension.dart';
import 'package:kia_watchstore/Resources/colors.dart';

import '../Components/text_style.dart';
import '../Resources/dimens.dart';

class CartScreenProceedToCheckout extends StatelessWidget {
  const CartScreenProceedToCheckout({super.key, required this.size});
  final Size size;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: MyDimens.large),
      height: size.height *.06,
      width: size.width,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Text("مجموع ${53500.numSeparator} تومان" , textDirection: TextDirection.rtl,),
        Container(
          padding: EdgeInsets.all(MyDimens.small),
          height: 30,
          width: 90,
          decoration: BoxDecoration(
              color: MyColors.checkoutText,
              borderRadius: BorderRadius.all(Radius.circular(MyDimens.small))
          ),
          child: Text("ادامه فرآیند خرید" , style: LightTextStyles.proceedToCheckoutButtonText,),
        )

      ],),



    );
  }
}
