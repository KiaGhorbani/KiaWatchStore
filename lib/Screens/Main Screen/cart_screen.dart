import 'package:flutter/material.dart';
import 'package:kia_watchstore/Resources/dimens.dart';
import 'package:kia_watchstore/Resources/strings.dart';
import 'package:kia_watchstore/Widgets/appbar_my.dart';
import 'package:kia_watchstore/Widgets/cartscreen_cartitem.dart';
import 'package:kia_watchstore/Widgets/cartscreen_proceedtocheckout.dart';
import 'package:kia_watchstore/Widgets/cartscreen_sendtoaddress.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          size: size,
          appBarText: MyStrings.cart,
          isWatchScreen: false,
          isMainScreen: true,
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: MyDimens.small),
                  CartScreenSendToAddress(size: size),
                  CartScreenCartItem(
                    size: size,
                    itemCount: 1,
                    oldPrice: 500000,
                    discountedPrice: 1,
                    itemName: "mi Watch Lite ساعت شیائومی",
                  ),


                ],
              ),
            ),
            Positioned(
                bottom: 0,
                child: CartScreenProceedToCheckout(size: size))
          ],
        ),
      ),
    );
  }
}
