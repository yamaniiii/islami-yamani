import 'package:flutter/material.dart';

class MyThemeData {
  static const LightPrimaryColor = Color(0xFFB7935F);
  static const DarkPrimaryColor = Color(0xFF141A2E);
  static const LightMainTextColor = Color(0xFF242424);
  static const DarkMainTextColor = Color(0xFFF8F8F8);
  static const DarkAccentColor = Color(0xFFFACC1D);

  static var LightTheme = ThemeData(
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: LightPrimaryColor,
    ),
    cardColor: Colors.white,
    primaryColor: LightPrimaryColor,
    accentColor: LightPrimaryColor,
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
    textTheme: const TextTheme(
      headline3: TextStyle(
        fontSize: 32,
        color: LightMainTextColor,
      ),
      headline5: TextStyle(
        fontSize: 24,
        color: LightMainTextColor,
      ),
      bodyText1: TextStyle(
        fontSize: 20,
        color: LightMainTextColor,
      ),
      bodyText2: TextStyle(
        fontSize: 24,
        color: LightMainTextColor,
      ),
    ),
  );
  static var DarkTheme = ThemeData(
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: DarkPrimaryColor,
    ),
    cardColor: DarkPrimaryColor,
    primaryColor: DarkPrimaryColor,
    accentColor: DarkAccentColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: DarkMainTextColor,
          fontSize: 30,
        ),
        iconTheme: IconThemeData(color: Colors.white)),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: DarkMainTextColor,
      selectedIconTheme: IconThemeData(color: DarkAccentColor),
      unselectedIconTheme: IconThemeData(color: Colors.white),
    ),
    textTheme: const TextTheme(
      headline3: TextStyle(
        fontSize: 32,
        color: DarkMainTextColor,
      ),
      headline5: TextStyle(
        fontSize: 24,
        color: DarkMainTextColor,
      ),
      bodyText1: TextStyle(
        fontSize: 20,
        color: DarkMainTextColor,
      ),
      bodyText2: TextStyle(
        fontSize: 24,
        color: DarkMainTextColor,
      ),
    ),
  );
  static ThemeMode themeMode = ThemeMode.dark;
}
