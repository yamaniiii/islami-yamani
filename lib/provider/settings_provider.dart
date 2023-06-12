import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;
  String languageCode = 'en';

  void ChangeLanguage(String newLangCode) {
    languageCode = newLangCode;
    notifyListeners();
  }

  void ChangeTheme(ThemeExtension newMode) {
    // themeMode = newMode as ThemeMode;
    ThemeMode thememode = ThemeMode.light;
    notifyListeners();
  }

  void enableLightMode() {
    themeMode = ThemeMode.light;
    notifyListeners();
  }

  bool isDarkEnabled() {
    return themeMode == ThemeMode.dark;
  }

  void enableDarkMode() {
    themeMode = ThemeMode.dark;
    notifyListeners();
  }

  String getBackGroundImage() {
    return themeMode == ThemeMode.light
        ? 'assets/images/bg3.png'
        : 'assets/images/dark_main_background.png';
  }
}
