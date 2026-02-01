import 'package:flutter/material.dart';

import '../Resources/dimens.dart';
import '../Resources/strings.dart';

class CartScreenSendToAddress extends StatelessWidget {
  const CartScreenSendToAddress({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(MyDimens.medium),
      height: size.height * .1,
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0, 1),
            blurRadius: 1,
          ),
        ],
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(MyStrings.sendToAddress),
                Text(
                  MyStrings.loremIpsum,
                  overflow: TextOverflow.ellipsis,
                  textDirection: TextDirection.rtl,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
