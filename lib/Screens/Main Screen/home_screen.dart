import 'package:flutter/material.dart';
import 'package:kia_watchstore/Resources/colors.dart';
import 'package:kia_watchstore/Widgets/homescreen_categories.dart';
import 'package:kia_watchstore/Widgets/homescreen_searchbar.dart';
import 'package:kia_watchstore/Widgets/homescreen_slider.dart';

import '../../Resources/strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.mainScreenScaffold,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Search Bar
              MySearchBar(onTap: () {}),
              //Poster (Slider)
              MySlider(),
              //Watch Categories
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  WatchCategory(
                    catColor: MyColors.onDeskWatch,
                    catPic: "assets/icons/SVG/Desk Watch.svg",
                    catText: MyStrings.onDeskWatch,
                    onTap: () {},
                  ),

                  WatchCategory(
                    catColor: MyColors.digitalWatch,
                    catPic: "assets/icons/SVG/Digital Watch.svg",
                    catText: MyStrings.digitalWatch,
                    onTap: () {},
                  ),

                  WatchCategory(
                    catColor: MyColors.smartWatch,
                    catPic: "assets/icons/SVG/Smart Watch.svg",
                    catText: MyStrings.smartWatch,
                    onTap: () {},
                  ),

                  WatchCategory(
                    catColor: MyColors.classicWatch,
                    catPic: "assets/icons/SVG/Classic Watch.svg",
                    catText: MyStrings.classicWatch,
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
