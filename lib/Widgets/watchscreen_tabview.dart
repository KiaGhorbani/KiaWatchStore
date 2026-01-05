import 'package:flutter/material.dart';
import 'package:kia_watchstore/Components/text_style.dart';
import 'package:kia_watchstore/Resources/dimens.dart';
import 'package:kia_watchstore/Widgets/watchscreen_commentstab.dart';
import 'package:kia_watchstore/Widgets/watchscreen_featuretab.dart';
import 'package:kia_watchstore/Widgets/watchscreen_reviewtab.dart';

class WatchScreenTabview extends StatefulWidget {
  const WatchScreenTabview({super.key, required this.size});

  final Size size;

  @override
  State<WatchScreenTabview> createState() => _WatchScreenTabviewState();
}

class _WatchScreenTabviewState extends State<WatchScreenTabview> {
  int selectedTabIndex = 2;
  @override
  Widget build(BuildContext context) {
    List<String> watchScreenTabs = ["نظرات", "نقد و بررسی", "خصوصیات"];
    return Column(
      children: [
        SizedBox(
          width: widget.size.width,
          height: 50,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: watchScreenTabs.length,
            itemExtent: widget.size.width / 3,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => setState(() => selectedTabIndex = index),
                child: Container(
                  padding: EdgeInsets.all(MyDimens.medium),
                  child: Text(
                    watchScreenTabs[index],
                    style: index == selectedTabIndex
                        ? LightTextStyles.watchTabSelected
                        : LightTextStyles.watchTabUnSelected,
                  ),
                ),
              );
            },
          ),
        ),
        IndexedStack(
          index: selectedTabIndex,
          children: [
            WatchScreenFeatureTab(),
            WatchScreenReviewTab(),
            WatchScreenCommentsTab(),
          ],
        )
      ],
    );
  }
}
