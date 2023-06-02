import 'package:flutter/material.dart';
import 'package:islamii/ui/hadeth_details/hadeth_details.dart';
import 'package:islamii/ui/home/home_screen.dart';
import 'package:islamii/ui/my_theme_data.dart';
import 'package:islamii/ui/splash/splash_screen.dart';
import 'package:islamii/ui/sura_details/sura_details.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (BuildContext) => SplashScreen(),
        HomeScreen.routeName: (BuildContext) => HomeScreen(),
        SuraDetailsScreen.routeName: (BuildContext) => SuraDetailsScreen(),
        HadethDetailsScreen.routeName: (BuildContext) => HadethDetailsScreen(),
      },
      theme: MyThemeData.LightTheme,
      darkTheme: MyThemeData.DarkTheme,
      themeMode: MyThemeData.themeMode,
    );
  }
}
