import 'dart:core';

import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';

import 'account.dart';
import 'answerFr.dart';
import 'avatar.dart';
import 'home.dart';
import 'journal.dart';
import 'question.dart';
import 'settings.dart';

void main() => runApp(MyApp());

final date = formatDate(DateTime.now(), [dd, '-', mm, '-', yyyy]);

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mon compagnon virtuel',
      initialRoute: '/',
      routes: {
        //routes pour naviguer entre les pages
        '/': (context) => Home(),
        '/questionFr': (context) => QuestionPage(),
        '/answerP_Fr': (context) => AnswerPFr(),
        '/answerN_Fr': (context) => AnswerNFr(),
        '/noAnswer_Fr': (context) => NoAnswerFr(),
        '/accountFr': (context) => AccountPage(),
        '/settingsFr': (context) => SettingsPage(),
        '/choixFr': (context) => ChoixFr(),
        '/avatarFr': (context) => Avatar(),
        '/journalFr': (context) => JournalPage(),
      },
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
                  '/homeEn',
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
                  '/homeJp',
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
