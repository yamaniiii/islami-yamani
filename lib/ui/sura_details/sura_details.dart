import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamii/ui/sura_details/verse_content.dart';

import '../my_theme_data.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = "sura_details";

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> chapterContent = [];

  @override
  Widget build(BuildContext context) {
    var args =
        ModalRoute.of(context)?.settings.arguments as SuraDetailsScreenArgs;
    if (chapterContent.isEmpty) {
      readFile(args.index);
    }
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            MyThemeData.themeMode == ThemeMode.light
                ? 'assets/images/bg3.png'
                : 'assets/images/dark_main_background.png',
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.title),
        ),
        body: Column(
          children: [
            Expanded(
              child: Card(
                elevation: 24,
                margin: EdgeInsets.symmetric(vertical: 60, horizontal: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: chapterContent.isEmpty
                    ? Center(child: CircularProgressIndicator())
                    : ListView.separated(
                        itemBuilder: (BuildContext context, int index) {
                          return VerseContent(chapterContent[index]);
                        },
                        itemCount: chapterContent.length,
                        separatorBuilder: (BuildContext context, int index) {
                          return Container(
                            color: Theme.of(context).accentColor,
                            height: 1,
                            width: double.infinity,
                            margin: EdgeInsets.symmetric(
                                horizontal: 100, vertical: 20),
                          );
                        },
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void readFile(int chapterIndex) async {
    String text =
        await rootBundle.loadString('assets/files/${chapterIndex + 1}.txt');
    await Future.delayed(Duration(seconds: 0));
    chapterContent = text.split('\n');
    setState(() {});
  }
}

class SuraDetailsScreenArgs {
  String title;
  int index;

  SuraDetailsScreenArgs(this.title, this.index);
}
