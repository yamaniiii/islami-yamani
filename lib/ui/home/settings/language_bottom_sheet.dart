import 'package:flutter/material.dart';
import 'package:islamii/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.all(50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
              onTap: () {
                provider.ChangeLanguage('en');
              },
              child: provider.languageCode == 'en'
                  ? getSelectedWidget('English', context)
                  : getUnSelectedWidget('English', context)),
          SizedBox(
            height: 26,
          ),
          InkWell(
              onTap: () {
                provider.ChangeLanguage('ar');
              },
              child: provider.languageCode == 'ar'
                  ? getSelectedWidget('?Arabic', context)
                  : getUnSelectedWidget('Arabic', context)),
        ],
      ),
    );
  }

  Widget getSelectedWidget(String title, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'English',
          style: Theme.of(context)
              .textTheme
              .bodyText2
              ?.copyWith(color: Theme.of(context).accentColor),
        ),
        Icon(
          Icons.check,
          color: Theme.of(context).accentColor,
        )
      ],
    );
  }

  Widget getUnSelectedWidget(String title, BuildContext context) {
    return Text(
      'Arabic',
      style: Theme.of(context).textTheme.bodyText2,
    );
  }
}
