import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsPage extends StatefulWidget {
  SettingsPageState createState() => SettingsPageState();
}

class SettingsPageState extends State {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.parametersPageHeader),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            myOutlinedButton(AppLocalizations.of(context)!.languageOption, '/languageSettingPage'),
            SizedBox(
              height: 20,
            ),
            myOutlinedButton(AppLocalizations.of(context)!.avatarOption, '/avatarPage'),
          ],
        ),
      ),
    );
  }
}

class myOutlinedButton extends StatelessWidget {
  final String buttonText, route;
  const myOutlinedButton(@required this.buttonText, @required this.route);
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
        Navigator.pushNamed(
          context,
          route,
        );
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
