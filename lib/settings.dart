import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'main.dart';

class oldSettingsPage extends StatefulWidget {
  oldSettingsPageState createState() => oldSettingsPageState();
}

class oldSettingsPageState extends State {
  Widget build(BuildContext context) {
    return MainScaffold(
      title: AppLocalizations.of(context)!.parametersPageHeader,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/fond/pastel.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 80.0, horizontal: 10.0),
          child: Column(children: [
            OutlinedButton(
              child: Row(
                children: [
                  Expanded(
                    child: Text(AppLocalizations.of(context)!.languageOption,
                        style: TextStyle(fontSize: 30, color: Colors.black, fontStyle: FontStyle.italic)),
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
                  '/choicePage',
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
            ),
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
              child: Row(
                children: [
                  Expanded(
                    child: Text(AppLocalizations.of(context)!.avatarOption,
                        style: TextStyle(fontSize: 30, color: Colors.black, fontStyle: FontStyle.italic)),
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
                  '/avatarPage',
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
            ),
          ]),
        ),
      ),
    );
  }
}

class ChoicePage extends StatefulWidget {
  ChoicePageState createState() => ChoicePageState();
}

class ChoicePageState extends State {
  Widget build(BuildContext context) {
    return MainScaffold(
      title: AppLocalizations.of(context)!.languagePageHeader,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/fond/pastel.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 80.0, horizontal: 10.0),
          child: Column(
            children: [
              Text(AppLocalizations.of(context)!.languageQuestion, style: TextStyle(fontSize: 35)),
              SizedBox(height: 80),
              OutlinedButton(
                child: Row(
                  children: [
                    Expanded(
                      child: Text("Français",
                          style: TextStyle(fontSize: 30, color: Colors.black, fontStyle: FontStyle.italic)),
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
                    '/settingsPage',
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
              ),
              SizedBox(height: 20),
              OutlinedButton(
                child: Row(
                  children: [
                    Expanded(
                      child: Text("English",
                          style: TextStyle(fontSize: 30, color: Colors.black, fontStyle: FontStyle.italic)),
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
                    '/settingsPage',
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
              ),
              SizedBox(height: 20),
              OutlinedButton(
                child: Row(
                  children: [
                    Expanded(
                      child:
                          Text("日本語", style: TextStyle(fontSize: 30, color: Colors.black, fontStyle: FontStyle.italic)),
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
                    '/settingsPage',
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
