import 'package:flutter/material.dart';
import 'package:kia_watchstore/Screens/OTP%20Screen/sendotp_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: SendOtpScreen()
    );
  }
}

