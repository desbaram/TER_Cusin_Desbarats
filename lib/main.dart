import 'dart:async';
import 'dart:core';

import 'package:compagnon_virtuel/pages/languageSettingPage.dart';
import 'package:date_format/date_format.dart';
import 'package:devicelocale/devicelocale.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'account.dart';
import 'answerFr.dart';
import 'pages/avatarPage.dart';
//import 'home.dart';
//import 'question.dart';
import 'pages/homePage.dart';
import 'pages/journalPage.dart';
import 'pages/questionPage.dart';
import 'pages/settingsPage.dart';

void main() => runApp(MyApp());

final date = formatDate(DateTime.now(), [dd, '-', mm, '-', yyyy]);
const en = Locale('en', 'UK');
const fr = Locale('fr', 'FR');
const ja = Locale('ja', 'JA');
var currentLocale = en;
bool localInit = false;

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<int> getLoc() async {
    Locale res;
    String? test;
    try {
      test = await Devicelocale.currentLocale;
    } on PlatformException {
      print("Error obtaining current locale");
    }

    switch (test) {
      case 'fr':
        res = fr;
        break;
      case 'ja':
        res = ja;
        break;
      default:
        res = en;
    }
    localInit = true;
    currentLocale = res;
    await new Future.delayed(new Duration(milliseconds: 1500));
    return 1;
  }

  void refreshState() {
    setState(() {
      print("App state refreshed");
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      locale: currentLocale,
      debugShowCheckedModeBanner: false,
      title: 'Mon compagnon virtuel',
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.white,
        //fontFamily : 'Name',
        textTheme: TextTheme(
          //gros text bleu gras
          headline1: TextStyle(
              fontSize: 30,
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold),
          //gros text noir gras
          headline2: TextStyle(
              fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
          //gros text noir italique
          headline3: TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
          //petit texte bleu
          bodyText1:
              TextStyle(fontSize: 20, color: Theme.of(context).primaryColor),
          //petit texte blanc
          bodyText2:
              TextStyle(fontSize: 20, color: Theme.of(context).accentColor),
        ),
      ),
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
        '/': (context) => HomePage(refreshState),
        '/questionPage': (context) => QuestionPage(),
        '/positiveAnswerPage': (context) => AnswerPFr(),
        '/negativeAnswerPage': (context) => AnswerNFr(),
        '/noAnswerPage': (context) => NoAnswerFr(),
        '/accountPage': (context) => AccountPage(),
        '/settingsPage': (context) => SettingsPage(),
        '/languageSettingPage': (context) => LanguageSettingPage(),
        '/avatarPage': (context) => AvatarPage(),
        '/journalPage': (context) => JournalPage(),
      },
    );
  }
}

class DrawerFr extends StatelessWidget {
  //classe pour le menu français
  Widget build(BuildContext context) {
    // key: scaffoldKey,

    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            //haut du menu
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ), //nom en haut du menu
          ),
          ListTile(
            //première option du menu
            leading: Icon(Icons.home), //son icône
            title: Text("Page d'accueil"), //son nom
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
            title: Text('Profil'), //son nom
            onTap: () {
              Navigator.pushNamed(
                context,
                '/accountFr',
              ); //quand on appuie dessus, on est redirigé vers la route suivante
            },
          ),
          ListTile(
            //troisième option du menu
            leading: Icon(Icons.settings), //son icône
            title: Text('Paramètres'), //son nom
            onTap: () {
              Navigator.pushNamed(
                context,
                '/settingsFr',
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
        actions: [new LanguageButton(print)],
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
