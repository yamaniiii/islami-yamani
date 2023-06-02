import 'package:flutter/material.dart';

class MyThemeData {
  static const LightPrimaryColor = Color(0xFFB7935F);
  static const DarkPrimaryColor = Color(0xFF141A2E);
  static const LightMainTextColor = Color(0xFF242424);
  static const DarkMainTextColor = Color(0xFFF8F8F8);
  static var LightTheme = ThemeData(
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: LightPrimaryColor,
    ),
    cardColor: Colors.white,
    primaryColor: LightPrimaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: LightMainTextColor,
          fontSize: 30,
        ),
        iconTheme: IconThemeData(color: Colors.black)),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: LightMainTextColor,
      selectedIconTheme: IconThemeData(color: Colors.black),
      unselectedIconTheme: IconThemeData(color: Colors.white),
    ),
  );
  static var DarkTheme = ThemeData();
}
