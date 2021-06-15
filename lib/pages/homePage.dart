import 'dart:core';
import 'dart:math';

import 'package:compagnon_virtuel/classes/language.dart';
import 'package:compagnon_virtuel/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  //todo: mettre ça à jour selon la valeur globale
  var im = Image.asset("assets/avatar/dog.png");
  int heure = DateTime.now().hour; //heure actuelle
  //todo: implémenter un truc jour/mois pour le format japonais
  String date = DateFormat("dd MM yyyy").format(DateTime.now());

  Widget build(BuildContext context) {
    //todo: scale fontSize depending on system parameters
    final ButtonStyle style = ElevatedButton.styleFrom(
      primary: Colors.blue,
      textStyle: TextStyle(
        fontSize: min(normalSize * textSizePrefs, 40),
        color: Colors.white,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.homePageHeader,
          textAlign: TextAlign.left,
        ),
        actions: [
          LanguageButton(),
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              setState(() {
                heure = DateTime.now().hour;
                date = DateFormat("dd MM yyyy").format(DateTime.now());
              });
            },
          ),
        ],
      ),
      drawer: DrawerMenu(),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  "${AppLocalizations.of(context)!.todaysDate} ${date}",
                  style: TextStyle(
                    fontSize: min(normalSize * textSizePrefs, 30),
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Text(
                AppLocalizations.of(context)!.welcomeMessage,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: min(titleSize * textSizePrefs, 80),
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Center(
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: (heure < 11)
                          ? null
                          : () {
                              Navigator.pushNamed(context, '/questionPage');
                            },
                      child: (heure < 11)
                          ? Text(
                              AppLocalizations.of(context)!.questionAvailableAt11,
                              textAlign: TextAlign.center,
                            )
                          : Text(
                              AppLocalizations.of(context)!.answerMessage,
                              textAlign: TextAlign.center,
                            ),
                      style: style,
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/journalPage');
                      },
                      child: Text(AppLocalizations.of(context)!.accessLogMessage),
                      style: style,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class refreshButton extends StatelessWidget {
  late Function updateCall;

  refreshButton(updateCall);
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.refresh),
      onPressed: updateCall(),
    );
  }
}

class DrawerMenu extends StatefulWidget {
  //classe pour le menu français
  @override
  DrawerMenuState createState() => DrawerMenuState();
}

class DrawerMenuState extends State<DrawerMenu> {
  void refresh() {
    setState(() {});
  }

  Widget build(BuildContext context) {
    //final TextStyle myTextStyle = TextStyle(color: Colors.white, fontSize: 20);
    AssetImage profilePic = AssetImage('assets/avatar/${avatarPrefs}.png');

    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blue[800],
                child: CircleAvatar(
                  radius: 65,
                  backgroundImage: profilePic,
                ),
              ),
            ),
            ListTile(
              //première option du menu
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                AppLocalizations.of(context)!.homeName,
                style: TextStyle(
                  fontSize: min(normalSize * textSizePrefs, 30),
                  color: Colors.white,
                ),
              ), //son nom
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(
                  context,
                  '/',
                ); //quand on appuie dessus, on est redirigé vers la route suivante
              },
            ),
            ListTile(
              //deuxième option du menu
              leading: Icon(
                Icons.account_circle,
                color: Colors.white,
              ), //son icône
              title: Text(
                AppLocalizations.of(context)!.profileName,
                style: TextStyle(
                  fontSize: min(normalSize * textSizePrefs, 30),
                  color: Colors.white,
                ),
              ), //son nom
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(
                  context,
                  '/accountPage',
                ); //quand on appuie dessus, on est redirigé vers la route suivante
              },
            ),
            ListTile(
              //troisième option du menu
              leading: Icon(
                Icons.settings,
                color: Colors.white,
              ), //son icône
              title: Text(
                AppLocalizations.of(context)!.parametersName,
                style: TextStyle(
                  fontSize: min(normalSize * textSizePrefs, 30),
                  color: Colors.white,
                ),
              ), //son nom
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(
                  context,
                  '/settingsPage',
                ); //quand on appuie dessus, on est redirigé vers la route suivante
              },
            ),
          ],
        ),
      ),
    );
  }
}

class LanguageButton extends StatefulWidget {
  @override
  _LanguageButtonState createState() => _LanguageButtonState();
}

class _LanguageButtonState extends State<LanguageButton> {
  void _changeLanguage(String languageCode) {
    switch (languageCode) {
      case 'fr':
        MyApp.setLocale(context, fr);
        print("Switch en français");
        break;
      case 'en':
        MyApp.setLocale(context, en);
        print("Switch en anglais");
        break;
      case 'ja':
        MyApp.setLocale(context, ja);
        print("Switch en japonais");
        break;
      default:
        print("Unknown language, no switching");
    }
  }

  Widget build(BuildContext context) {
    AssetImage buttonIcon;
    switch (currentLocale.languageCode) {
      case 'ja':
        buttonIcon = AssetImage("assets/flags/ja_flag.png");
        break;
      case 'fr':
        buttonIcon = AssetImage("assets/flags/fr_flag.png");
        break;
      default:
        buttonIcon = AssetImage("assets/flags/uk_flag.png");
    }
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 5, 5, 5),
      child: DropdownButton(
        onChanged: (Language? lang) {
          lang == null ? print("Null language error") : _changeLanguage(lang.languageCode);
        },
        underline: SizedBox(),
        icon: CircleAvatar(
          radius: 18,
          backgroundColor: Theme.of(context).accentColor,
          child: CircleAvatar(
            backgroundImage: buttonIcon,
            radius: 16,
          ),
        ),
        items: Language.languageList()
            .map<DropdownMenuItem<Language>>((lang) => DropdownMenuItem(
                value: lang,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                  Text(
                    lang.drapeau,
                    style: new TextStyle(fontSize: 30),
                  ),
                  Text(lang.language),
                ])))
            .toList(),
      ),
    );
  }
}
