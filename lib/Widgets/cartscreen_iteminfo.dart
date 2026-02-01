import 'package:flutter/material.dart';
import 'package:kia_watchstore/Components/text_style.dart';
import 'package:kia_watchstore/Extensions/int_extension.dart';

class CartScreenItemInfo extends StatelessWidget {
  const CartScreenItemInfo({
    super.key,
    required this.itemCount,
    required this.oldPrice,
    required this.discountPrice,
    required this.itemName,
  });

  final int itemCount;
  final int oldPrice;
  final int discountPrice;
  final String itemName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child:
          Column(
            children: [
              Text(itemName, style: LightTextStyles.titleText , textDirection: TextDirection.rtl,),
              Text(
                "قیمت: ${oldPrice.numSeparator} تومان",
                style: discountPrice > 0 ?
                LightTextStyles.oldPrice:
                LightTextStyles.oldPrice.copyWith(color: Colors.black , decoration:TextDecoration.none )

              ),
              Visibility(
                visible: discountPrice > 0 ? true : false,
                child: Text(
                  "با تخفیف: ${discountPrice.numSeparator} تومان",
                  style: LightTextStyles.discountedPrice,
                ),
              ),
              Divider(thickness: 2,),
              Row(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.delete_rounded)),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.remove_circle_outline),
                  ),
                  Text("$itemCount عدد" , textDirection: TextDirection.rtl,),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add_circle_outline),
                  ),
                ],
              ),
            ],
          ),
        ),

        Image.asset("assets/images/PNG/Watch2.png")
      ],
    );
  }
}
