import 'package:flutter/material.dart';
import 'package:kia_watchstore/Resources/colors.dart';
import 'package:kia_watchstore/Resources/dimens.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key, required this.child, required this.size});
  final Widget child;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width *.8,
      padding: EdgeInsets.fromLTRB(MyDimens.medium, MyDimens.medium, MyDimens.medium, 0),
      margin: EdgeInsets.all(MyDimens.medium),
      decoration: BoxDecoration(
        color: MyColors.surface,
        borderRadius: BorderRadius.all(Radius.circular(MyDimens.medium))



      ),



        child: child,

    );
  }
}
