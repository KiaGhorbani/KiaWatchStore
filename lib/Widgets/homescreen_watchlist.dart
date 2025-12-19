import 'package:flutter/material.dart';
import 'package:kia_watchstore/Widgets/homescreen_rotatedtexts.dart';
import 'package:kia_watchstore/Widgets/homescreen_watchitem.dart';

class MyWatchList extends StatelessWidget {
  const MyWatchList({super.key, required this.watchListTitle, required this.onTap});
  final String watchListTitle;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      reverse: true,
      child: Row(
        children: [
          SizedBox(
            height: 289,
            width: 428,
            child: ListView.builder(
              reverse: true,
              physics: ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return WatchItem(watchName: 'ساعت مردانه', price: 600,discount: 10,time: 5,);
              },
            ),
          ),
          MyRotatedText(watchListTitle: watchListTitle, onTap: onTap,)


        ],
      ),
    );
  }
}
