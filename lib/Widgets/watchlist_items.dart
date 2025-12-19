import 'package:flutter/material.dart';
import 'package:kia_watchstore/Widgets/homescreen_watchitem.dart';

class WatchlistItems extends StatelessWidget {
  const WatchlistItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.85,
        ),
        itemBuilder: (context, index) {
          return WatchItem(watchName: "Patek Phillip", price: 2000);
        },
      ),
    );
  }
}
