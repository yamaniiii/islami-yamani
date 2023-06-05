import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islamii/ui/my_theme_data.dart';

import '../home/home_screen.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = "Splash";

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 2),
      () {
        Navigator.pushReplacementNamed(context, HomeScreen.routeName);
      },
    );
    return Scaffold(
      body: Container(
        child: Image.asset(
          MyThemeData.themeMode == ThemeMode.light
              ? 'assets/images/splash.png'
              : 'assets/images/dark_splash_background.png',
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
