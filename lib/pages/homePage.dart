import 'dart:core';

import 'package:compagnon_virtuel/classes/language.dart';
import 'package:compagnon_virtuel/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
//import '../main.dart';

class HomePage extends StatefulWidget {
  final Function refreshApp;

  HomePage(@required this.refreshApp);

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
    final TextStyle myTextStyle = TextStyle(color: Colors.white, fontSize: 20);
    final ButtonStyle style = ElevatedButton.styleFrom(
      primary: Colors.blue,
      textStyle: myTextStyle,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.homePageHeader),
        actions: [
          LanguageButton(widget.refreshApp),
        ],
      ),
      drawer: DrawerMenu(),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  "${AppLocalizations.of(context)!.todaysDate} ${date}",
                  style: myTextStyle,
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Text(AppLocalizations.of(context)!.welcomeMessage,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 30.0,
                  )),
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

class DrawerMenu extends StatelessWidget {
  //classe pour le menu français
  Widget build(BuildContext context) {
    final TextStyle myTextStyle = TextStyle(color: Colors.white, fontSize: 20);

    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Container(
                height: 100,
                //todo: mettre l'avatar ici
                child: CircleAvatar(),
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
                style: myTextStyle,
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
                style: myTextStyle,
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
                style: myTextStyle,
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
  Function refreshApp;
  LanguageButton(@required this.refreshApp);
  @override
  _LanguageButtonState createState() => _LanguageButtonState();
}

class _LanguageButtonState extends State<LanguageButton> {
  void _changeLanguage(String languageCode) {
    switch (languageCode) {
      case 'fr':
        setState(() {
          currentLocale = fr;
        });
        print("Switch en français");
        break;
      case 'en':
        setState(() {
          currentLocale = en;
        });
        print("Switch en anglais");
        break;
      case 'ja':
        setState(() {
          currentLocale = ja;
        });
        print("Switch en japonais");
        break;
      default:
        print("Unknown language, no switching");
    }
    widget.refreshApp();
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DropdownButton(
        onChanged: (Language? lang) {
          lang == null ? print("Null language error") : _changeLanguage(lang.languageCode);
        },
        underline: SizedBox(),
        icon: Icon(
          Icons.language,
          color: Colors.white,
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
