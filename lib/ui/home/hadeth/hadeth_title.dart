import 'package:flutter/material.dart';
import 'package:islamii/ui/home/hadeth/Hadeth.dart';

class HadethTitleWidget extends StatelessWidget {
  Hadeth hadeth;

  HadethTitleWidget(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        hadeth.title,
        style: TextStyle(
          fontSize: 24,
        ),
      ),
    );
  }
}
