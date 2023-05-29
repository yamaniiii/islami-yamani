import 'package:flutter/material.dart';
import 'package:islamii/ui/hadeth_details/hadeth_details.dart';
import 'package:islamii/ui/home/home_screen.dart';
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
      theme: ThemeData(
        progressIndicatorTheme: ProgressIndicatorThemeData(
          color: Color(0xffB7935F),
        ),
        cardColor: Colors.white,
        primaryColor: Color(0xffB7935F),
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(
            color: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            titleTextStyle: TextStyle(
              color: Color(0xFF242424),
              fontSize: 30,
            ),
            iconTheme: IconThemeData(color: Colors.black)),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color(0xffB7935F),
          selectedIconTheme: IconThemeData(color: Colors.black),
          unselectedIconTheme: IconThemeData(color: Colors.white),
        ),
      ),
    );
  }
}
