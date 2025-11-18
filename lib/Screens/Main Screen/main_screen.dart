import 'package:flutter/material.dart';
import 'package:kia_watchstore/Resources/colors.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double bottomNavHeight = size.height * .1;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              color: Colors.red,
              height: size.height,
            ),
          ),


          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              color:MyColors.bottomNav,
              height: bottomNavHeight,
            ),
          ),
        ],
      ),
    );
  }
}
