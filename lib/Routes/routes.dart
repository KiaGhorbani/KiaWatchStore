import 'package:flutter/cupertino.dart';
import 'package:kia_watchstore/Routes/route_names.dart';
import 'package:kia_watchstore/Screens/Main%20Screen/main_screen.dart';
import 'package:kia_watchstore/Screens/OTP%20Screen/getotp_screen.dart';
import 'package:kia_watchstore/Screens/OTP%20Screen/sendotp_screen.dart';
import 'package:kia_watchstore/Screens/Register%20Screen/register_screen.dart';

class MyRoutes {
  MyRoutes._();

  static Map<String, Widget Function(BuildContext)> myRoutes = {
    ScreenNames.enterNumberScreen: (context) => SendOtpScreen(),
    ScreenNames.enterOtpScreen: (context) => GetOtpScreen(),
    ScreenNames.registerScreen: (context) => RegisterScreen(),
    ScreenNames.mainScreen: (context) => MainScreen(),
  };
}
