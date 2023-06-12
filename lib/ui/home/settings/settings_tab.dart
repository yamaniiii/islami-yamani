import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamii/ui/home/settings/language_bottom_sheet.dart';
import 'package:islamii/ui/home/settings/theme_bottom_sheet.dart';
import 'package:provider/provider.dart';

import '../../../provider/settings_provider.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(vertical: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              ShowThemeBottomShete(context);
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 14),
              decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Theme.of(context).accentColor,
                    width: 2,
                  )),
              child: Text(
                provider.isDarkEnabled()
                    ? AppLocalizations.of(context)!.dark
                    : AppLocalizations.of(context)!.light,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Text(
            'Language',
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              ShowLanguageBottomShete(context);
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 14),
              decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Theme.of(context).accentColor,
                    width: 2,
                  )),
              child: Text(
                provider.languageCode == 'en' ? 'English' : 'Arabic',
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void ShowThemeBottomShete(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (buildcontext) => ThemeBottomSheet(),
    );
  }

  void ShowLanguageBottomShete(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (buildcontext) => LanguageBottomSheet(),
    );
  }
}
