import 'dart:core';

import 'package:compagnon_virtuel/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LanguageSettingPage extends StatefulWidget {
  @override
  _LanguageSettingPageState createState() => _LanguageSettingPageState();
}

class _LanguageSettingPageState extends State<LanguageSettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.languagePageHeader,
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              AppLocalizations.of(context)!.languageQuestion,
              style: Theme.of(context).textTheme.headline1,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 80),
            languageSwitchOutlinedButton("Français", 'fr'),
            SizedBox(height: 20),
            languageSwitchOutlinedButton("English", 'en'),
            SizedBox(height: 20),
            languageSwitchOutlinedButton("日本語", 'ja'),
          ],
        ),
      ),
    );
  }
}

class languageSwitchOutlinedButton extends StatelessWidget {
  final String buttonText, languageCode;
  const languageSwitchOutlinedButton(@required this.buttonText, @required this.languageCode);
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: Row(
        children: [
          Expanded(
            child: Text(buttonText, style: Theme.of(context).textTheme.headline3),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.black,
          ),
        ],
      ),
      onPressed: () {
        print("Donc la on change la langue vers ${languageCode}");
        switch (languageCode) {
          case 'ja':
            MyApp.setLocale(context, ja);
            break;
          case 'fr':
            MyApp.setLocale(context, fr);
            break;
          default:
            MyApp.setLocale(context, en);
        }
      },
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.white,
        shadowColor: Colors.grey,
        elevation: 5,
        side: BorderSide(color: Colors.grey, width: 2),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
        minimumSize: Size(180, 55),
      ),
    );
  }
}
