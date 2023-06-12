import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islamii/provider/settings_provider.dart';
import 'package:islamii/ui/hadeth_details/hadeth_details.dart';
import 'package:islamii/ui/home/home_screen.dart';
import 'package:islamii/ui/my_theme_data.dart';
import 'package:islamii/ui/splash/splash_screen.dart';
import 'package:islamii/ui/sura_details/sura_details.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
        create: (BuildContext) => SettingsProvider(), child: MyApplication()),
  );
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
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
      themeMode: provider.themeMode,
      localizationsDelegates: const [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],
      locale: Locale(provider.languageCode),
    );
  }
}
