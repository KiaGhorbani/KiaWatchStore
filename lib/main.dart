import 'package:flutter/material.dart';
import 'package:kia_watchstore/Components/theme.dart';
import 'package:kia_watchstore/Screens/OTP%20Screen/getotp_screen.dart';
import 'package:kia_watchstore/Screens/OTP%20Screen/sendotp_screen.dart';
import 'package:kia_watchstore/Screens/Register%20Screen/register_screen.dart';

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
      home: RegisterScreen()
    );
  }
}

