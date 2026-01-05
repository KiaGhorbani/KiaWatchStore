import 'package:flutter/material.dart';
import 'package:kia_watchstore/Components/theme.dart';
import 'package:kia_watchstore/Routes/route_names.dart';
import 'package:kia_watchstore/Routes/routes.dart';
import 'package:kia_watchstore/Screens/Watch%20Screen/watch_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme(),
      // initialRoute: ScreenNames.mainScreen,
      // routes: MyRoutes.myRoutes,
      home: WatchScreen(),
    );
  }
}

