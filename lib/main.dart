import 'dart:core';

import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'account.dart';
import 'answerFr.dart';
import 'avatar.dart';
import 'classes/language.dart';
import 'home.dart';
import 'journal.dart';
import 'question.dart';
import 'settings.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

final date = formatDate(DateTime.now(), [dd, '-', mm, '-', yyyy]);

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();

  static _MyAppState? of(BuildContext context) => context.findAncestorStateOfType<_MyAppState>();
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;

  void setLocale(Locale value) {
    setState(() {
      _locale = value;
    });
  }

  Widget build(BuildContext context) {
    _locale = Localizations.localeOf(context);
    return MaterialApp(
      title: 'Mon compagnon virtuel',
      locale: _locale,
      debugShowCheckedModeBanner: false,
      //Ce qui suit permet de gérer la localisation
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'UK'),
        const Locale('fr', 'FR'),
        const Locale('ja', 'JP'),
      ],
      initialRoute: '/',
      routes: {
        //routes pour naviguer entre les pages
        '/': (context) => Home(),
        '/questionPage': (context) => QuestionPage(),
        '/positiveAnswerPage': (context) => AnswerPFr(),
        '/negativeAnswerPage': (context) => AnswerNFr(),
        '/noAnswerPage': (context) => NoAnswerFr(),
        '/accountPage': (context) => AccountPage(),
        '/settingsPage': (context) => SettingsPage(),
        '/choicePage': (context) => ChoicePage(),
        '/avatarPage': (context) => Avatar(),
        '/journalPage': (context) => JournalPage(),
      },
    );
  }
}

class LanguageButton extends StatelessWidget {
  void changeLanguage(Language? lang) {
    Locale temp;
    switch (lang!.languageCode) {
      case 'ja':
        temp = Locale(lang.languageCode, 'JA');
        break;
      case 'fr':
        temp = Locale(lang.languageCode, 'FR');
        break;
      default:
        temp = Locale(lang.languageCode, 'UK');
    }
    MyApp.of(mycontext)!.setLocale(temp);
  }

  late BuildContext mycontext; //I can do that to force it but it's not helping
  Widget build(BuildContext context) {
    mycontext = context; //and here's where I force it
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DropdownButton(
        underline: SizedBox(),
        onChanged: changeLanguage,
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

class DrawerMenu extends StatelessWidget {
  //classe pour le menu français
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            //haut du menu
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              AppLocalizations.of(context)!.menuName,
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ), //nom en haut du menu
          ),
          ListTile(
            //première option du menu
            leading: Icon(Icons.home), //son icône
            title: Text(AppLocalizations.of(context)!.homeName), //son nom
            onTap: () {
              Navigator.pushNamed(
                context,
                '/',
              ); //quand on appuie dessus, on est redirigé vers la route suivante
            },
          ),
          ListTile(
            //deuxième option du menu
            leading: Icon(Icons.account_circle), //son icône
            title: Text(AppLocalizations.of(context)!.profileName), //son nom
            onTap: () {
              Navigator.pushNamed(
                context,
                '/accountPage',
              ); //quand on appuie dessus, on est redirigé vers la route suivante
            },
          ),
          ListTile(
            //troisième option du menu
            leading: Icon(Icons.settings), //son icône
            title: Text(AppLocalizations.of(context)!.parametersName), //son nom
            onTap: () {
              Navigator.pushNamed(
                context,
                '/settingsPage',
              ); //quand on appuie dessus, on est redirigé vers la route suivante
            },
          ),
        ],
      ),
    );
  }
}

class MainScaffold extends StatelessWidget {
  //classe pour l'apparance des pages en français
  final Widget body; //le body est défini dans les classes de chaque page
  final String title; //le nom est défini dans les classes de chaque page

  MainScaffold({required this.body, required this.title});
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        actions: [new LanguageButton()],
        title: Text(
          title,
        ),
      ), //barre d'outils du haut avec le titre
      body: body,
      drawer: DrawerMenu(), //le menu qui appelle la classe défini ci-dessus
      bottomNavigationBar: BottomAppBar(
        //barre d'outils du bas
        color: Colors.blue,
        child: Row(children: [
          IconButton(
              //un bouton icône représenté par l'image appelé ci-dessous
              icon: Image.asset(
                "assets/logo/UK.jpg",
                width: 50.0,
                height: 50.0,
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/',
                ); //lorsqu'on clique sur l'icône, on est redirigé vers la page /homeEn
              }),
          IconButton(
              //un bouton icône représenté par l'image appelé ci-dessous
              icon: Image.asset(
                "assets/logo/JP.png",
                width: 50.0,
                height: 50.0,
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/',
                ); //lorsqu'on clique sur l'icône, on est redirigé vers la page /homeJp
              }),
          SizedBox(
            height: 0,
            width: 180,
          ),
          Text(
            date,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ), //affiche la date d'aujourd'hui
        ]),
      ),
    );
  }
}
