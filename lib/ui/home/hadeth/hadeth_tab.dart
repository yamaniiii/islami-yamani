import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamii/ui/home/hadeth/Hadeth.dart';
import 'package:islamii/ui/home/hadeth/hadeth_title.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> allHadethList = [];

  @override
  Widget build(BuildContext context) {
    if (allHadethList.isEmpty) {
      readHadethFile();
    }
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Image.asset(
            "assets/images/hadeth_header_image.png",
          ),
        ),
        Container(
          width: double.infinity,
          height: 1.5,
          color: Theme.of(context).primaryColor,
          margin: EdgeInsets.only(bottom: 4),
        ),
        Text(
          "Hadeth Number",
          style: TextStyle(fontSize: 25),
        ),
        Container(
          width: double.infinity,
          height: 1.5,
          color: Theme.of(context).primaryColor,
          margin: EdgeInsets.only(top: 4),
        ),
        Expanded(
          flex: 2,
          child: Container(
            child: allHadethList.isEmpty
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.separated(
                    itemBuilder: (buildcontext, index) {
                      return HadethTitleWidget(allHadethList[index]);
                    },
                    itemCount: allHadethList.length,
                    separatorBuilder: (BuildContext context, int index) {
                      return Container(
                        color: Theme.of(context).primaryColor,
                        margin: EdgeInsets.symmetric(vertical: 1.5),
                        height: 1,
                        width: double.infinity,
                      );
                    },
                  ),
          ),
        ),
      ],
    );
  }

  void readHadethFile() async {
    List<Hadeth> hadethList = [];
    String fileContant =
        await rootBundle.loadString('assets/files/ahadeth .txt');
    List<String> splittedContent = fileContant.split("#");
    for (int i = 0; i < splittedContent.length; i++) {
      String singleHadethContent = splittedContent[i];
      List<String> lines = singleHadethContent.trim().split('\n');
      String title = lines[0];
      lines.removeAt(0);
      String content = lines.join('\n');
      Hadeth hadeth = Hadeth(title, content);
      hadethList.add(hadeth);
    }
    await Future.delayed(Duration(seconds: 0));
    allHadethList = hadethList;
    setState(() {});
  }
}
