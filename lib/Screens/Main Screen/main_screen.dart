import 'package:flutter/material.dart';
import 'package:kia_watchstore/Resources/colors.dart';
import 'package:kia_watchstore/Routes/bottomnav_indexes.dart';
import 'package:kia_watchstore/Screens/Main%20Screen/cart_screen.dart';
import 'package:kia_watchstore/Screens/Main%20Screen/home_screen.dart';
import 'package:kia_watchstore/Screens/Main%20Screen/profile_screen.dart';
import 'package:kia_watchstore/Widgets/mybottomnav_item.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = BottomNavIndexes.homeIndex;
  final GlobalKey<NavigatorState> _homeKey = GlobalKey();
  final GlobalKey<NavigatorState> _cartKey = GlobalKey();
  final GlobalKey<NavigatorState> _profileKey = GlobalKey();

  late final keyMap = {
    BottomNavIndexes.homeIndex: _homeKey,
    BottomNavIndexes.cartIndex: _cartKey,
    BottomNavIndexes.profileIndex: _profileKey,
  };

  List<int> mainScreenRouteHistory = [BottomNavIndexes.homeIndex];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double bottomNavHeight = size.height * .1;
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) {
          if (keyMap[selectedIndex]!.currentState!.canPop()) {
            keyMap[selectedIndex]!.currentState!.pop();
          } else if (mainScreenRouteHistory.length > 1) {
            setState(() {
              mainScreenRouteHistory.removeLast();
              selectedIndex = mainScreenRouteHistory.last;
            });
          }
        }
      },
      child: Scaffold(
        body: Stack(
          children: [
            //Pages
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              bottom: bottomNavHeight,
              child: IndexedStack(
                index: selectedIndex,
                children: [
                  Navigator(
                    key: _homeKey,
                    onGenerateRoute: (settings) {
                      return MaterialPageRoute(
                        builder: (context) {
                          return HomeScreen();
                        },
                      );
                    },
                  ),

                  Navigator(
                    key: _cartKey,
                    onGenerateRoute: (settings) {
                      return MaterialPageRoute(
                        builder: (context) {
                          return CartScreen();
                        },
                      );
                    },
                  ),

                  Navigator(
                    key: _profileKey,
                    onGenerateRoute: (settings) {
                      return MaterialPageRoute(
                        builder: (context) {
                          return ProfileScreen();
                        },
                      );
                    },
                  ),
                ],
              ),
            ),


            //Bottom Navigation
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                color: MyColors.bottomNav,
                height: bottomNavHeight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MyBottomNavItem(
                      itemText: "پروفایل",
                      itemIconPath: "assets/icons/SVG/ProfilePage Icon.svg",
                      isActive: selectedIndex == BottomNavIndexes.profileIndex,
                      onTap: () {
                        btmNavOnPressed(index: BottomNavIndexes.profileIndex);
                      },
                    ),

                    MyBottomNavItem(
                      itemText: "سبد خرید",
                      itemIconPath: "assets/icons/SVG/CartPage Icon.svg",
                      isActive: selectedIndex == BottomNavIndexes.cartIndex,
                      onTap: () {
                        btmNavOnPressed(index: BottomNavIndexes.cartIndex);
                      },
                    ),

                    MyBottomNavItem(
                      itemText: "خانه",
                      itemIconPath: "assets/icons/SVG/HomePage Icon.svg",
                      isActive: selectedIndex == BottomNavIndexes.homeIndex,
                      onTap: () {
                        btmNavOnPressed(index: BottomNavIndexes.homeIndex);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  btmNavOnPressed({required index}) {
    setState(() {
      selectedIndex = index;
      mainScreenRouteHistory.add(selectedIndex);
    });
  }
}
