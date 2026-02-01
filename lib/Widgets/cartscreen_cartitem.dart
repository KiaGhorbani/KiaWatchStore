import 'package:flutter/material.dart';
import 'package:kia_watchstore/Widgets/cartscreen_iteminfo.dart';
import 'package:kia_watchstore/Widgets/mycontainer.dart';

class CartScreenCartItem extends StatelessWidget {
  const CartScreenCartItem({
    super.key,
    required this.size,
    required this.itemCount,
    required this.oldPrice,
    required this.discountedPrice,
    required this.itemName,
  });

  final Size size;
  final int itemCount;
  final int oldPrice;
  final int discountedPrice;
  final String itemName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height ,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return MyContainer(
            size: size,
            child: CartScreenItemInfo(
              itemCount: itemCount,
              oldPrice: oldPrice,
              discountPrice: discountedPrice,
              itemName: itemName,
            ),
          );
        },
      ),
    );
  }
}
