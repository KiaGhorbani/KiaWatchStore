import 'package:flutter/material.dart';
import 'package:kia_watchstore/Extensions/sizedbox_extension.dart';
import 'package:kia_watchstore/Resources/colors.dart';
import 'package:kia_watchstore/Resources/dimens.dart';
import 'package:kia_watchstore/Widgets/homescreen_categories.dart';
import 'package:kia_watchstore/Widgets/homescreen_searchbar.dart';
import 'package:kia_watchstore/Widgets/homescreen_slider.dart';
import 'package:kia_watchstore/Widgets/homescreen_watchlist.dart';

import '../../Resources/strings.dart';
import '../Watch List Screen/watchlist_screen.dart';

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
              MyDimens.medium.height,
              //Amazing Watch List
              MyWatchList(watchListTitle: MyStrings.amazing, onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return WatchListScreen(appBarText: MyStrings.amazing);
                },));

              },),
              //Most Sales Watch List
              MyWatchList(watchListTitle: MyStrings.mostSales, onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return WatchListScreen(appBarText: MyStrings.mostSales);
                },));

              },),
              //Newest Watch List
              MyWatchList(watchListTitle: MyStrings.newest, onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return WatchListScreen(appBarText: MyStrings.newest);
                },));

              },),
            ],
          ),
        ),
      ),
    );
  }
}
