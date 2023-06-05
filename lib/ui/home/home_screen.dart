import 'package:flutter/material.dart';
import 'package:islamii/ui/home/quaran/quaran_tab.dart';
import 'package:islamii/ui/home/radio/radio_tab.dart';
import 'package:islamii/ui/home/tasbeh/tasbeh_tab.dart';

import '../my_theme_data.dart';
import 'hadeth/hadeth_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int SelectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              MyThemeData.themeMode == ThemeMode.light
                  ? 'assets/images/bg3.png'
                  : 'assets/images/dark_main_background.png',
            ),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("islami"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 50,
          currentIndex: SelectedTabIndex,
          onTap: (index) {
            SelectedTabIndex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: ImageIcon(
                AssetImage("assets/images/moshaf_gold.png"),
              ),
              label: "Quaran",
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: ImageIcon(
                AssetImage("assets/images/quran-quran-svgrepo-com.png"),
              ),
              label: "Hadeth",
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: ImageIcon(
                AssetImage("assets/images/sebha.png"),
              ),
              label: "Tasbeh",
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: ImageIcon(
                AssetImage("assets/images/radio.png"),
              ),
              label: "Radio",
            ),
          ],
        ),
        body: tabs[SelectedTabIndex],
      ),
    );
  }

  List<Widget> tabs = [
    QuaranTab(),
    HadethTab(),
    TasbehTab(),
    RadioTab(),
  ];
}
