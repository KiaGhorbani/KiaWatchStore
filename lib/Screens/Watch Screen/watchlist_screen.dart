import 'package:flutter/material.dart';
import 'package:kia_watchstore/Extensions/sizedbox_extension.dart';
import 'package:kia_watchstore/Resources/dimens.dart';
import 'package:kia_watchstore/Widgets/appbar_my.dart';
import 'package:kia_watchstore/Widgets/watchlist_items.dart';
import 'package:kia_watchstore/Widgets/watchlist_tags.dart';

class WatchListScreen extends StatelessWidget {
  const WatchListScreen({super.key, required this.appBarText});
  final String appBarText;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          size: size,
          appBarText: appBarText,
          isWatchScreen: false,
          isMainScreen: false,
        ),
        body: Column(
          children: [MyDimens.large.height, TagList(), WatchlistItems()],
        ),
      ),
    );
  }
}
