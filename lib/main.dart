import 'dart:core';
import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'answer.dart';
import 'question.dart';
import 'home.dart';
import 'account.dart';
import 'settings.dart';
import 'avatar.dart';
import 'journal.dart';
import 'game.dart';

void main() => runApp(MyApp()); //on lance l'application

final date =
    formatDate(DateTime.now(), [dd, '-', mm, '-', yyyy]); //date actuelle

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mon compagnon virtuel',
      initialRoute: '/',
      routes: {
        //routes pour naviguer entre les pages
        '/': (context) => HomeFr(),
        '/questionFr': (context) => QuestionFr(),
        '/answerFr': (context) => AnswerFr(),
        '/accountFr': (context) => AccountFr(),
        '/settingsFr': (context) => SettingsFr(),
        '/choixFr': (context) => ChoixFr(),
        '/avatarFr': (context) => AvatarFr(),
        '/journalFr': (context) => JournalFr(),
        '/textFr': (context) => TextFr(),
        '/resumeFr': (context) => ResumeFr(),
        '/gameFr': (context) => GameFr(),
        '/homeEn': (context) => HomeEn(),
        '/questionEn': (context) => QuestionEn(),
        '/answerEn': (context) => AnswerEn(),
        '/accountEn': (context) => AccountEn(),
        '/settingsEn': (context) => SettingsEn(),
        '/choixEn': (context) => ChoixEn(),
        '/avatarEn': (context) => AvatarEn(),
        '/journalEn': (context) => JournalEn(),
        '/textEn': (context) => TextEn(),
        '/resumeEn': (context) => ResumeEn(),
        '/gameEn': (context) => GameEn(),
        '/homeJp': (context) => HomeJp(),
        '/questionJp': (context) => QuestionJp(),
        '/answerJp': (context) => AnswerJp(),
        '/accountJp': (context) => AccountJp(),
        '/settingsJp': (context) => SettingsJp(),
        '/choixJp': (context) => ChoixJp(),
        '/avatarJp': (context) => AvatarJp(),
        '/journalJp': (context) => JournalJp(),
        '/textJp': (context) => TextJp(),
        '/resumeJp': (context) => ResumeJp(),
        '/gameJp': (context) => GameJp(),
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
          ListTile(
            //quatrième option du menu
            leading: Icon(Icons.videogame_asset), //son icône
            title: Text('Jeu'), //son nom
            onTap: () {
              Navigator.pushNamed(
                context,
                '/gameFr',
              ); //quand on appuie dessus, on est redirigé vers la route suivante
            },
          ),
        ],
      ),
    );
  }
}

class ScaffoldFr extends StatelessWidget {
  //classe pour l'apparance des pages en français
  final Widget body; //le body est défini dans les classes de chaque page
  final String title; //le nom est défini dans les classes de chaque page

  ScaffoldFr({required this.body, required this.title});
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          title,
        ),
      ), //barre d'outils du haut avec le titre
      resizeToAvoidBottomInset: false,
      body: body,
      drawer: DrawerFr(), //le menu qui appelle la classe défini ci-dessus
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

class DrawerEn extends StatelessWidget {
  //classe du menu en anglais
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("Home"),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/homeEn',
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Profile'),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/accountEn',
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/settingsEn',
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.videogame_asset),
            title: Text('Game'),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/gameEn',
              );
            },
          ),
        ],
      ),
    );
  }
}

class ScaffoldEn extends StatelessWidget {
  //classe pour l'apparance des pages en anglais
  final Widget body;
  final String title;

  ScaffoldEn({required this.body, required this.title});
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          title,
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: body,
      drawer: DrawerEn(),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Row(children: [
          IconButton(
              icon: Image.asset(
                "assets/logo/FR.png",
                width: 50.0,
                height: 50.0,
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/',
                );
              }),
          IconButton(
              icon: Image.asset(
                "assets/logo/JP.png",
                width: 50.0,
                height: 50.0,
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/homeJp',
                );
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
          ),
        ]),
      ),
    );
  }
}

class DrawerJp extends StatelessWidget {
  //classe pour le menu japonais
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'メニュー',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("ホームページ"),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/homeJp',
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('プロフィール'),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/accountJp',
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('パラメータ'),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/settingsJp',
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.videogame_asset),
            title: Text('ゲーム'),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/gameJp',
              );
            },
          ),
        ],
      ),
    );
  }
}

class ScaffoldJp extends StatelessWidget {
  //classe pour l'apparance des pages en japonais
  final Widget body;
  final String title;

  ScaffoldJp({required this.body, required this.title});
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          title,
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: body,
      drawer: DrawerJp(),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Row(children: [
          IconButton(
              icon: Image.asset(
                "assets/logo/FR.png",
                width: 50.0,
                height: 50.0,
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/',
                );
              }),
          IconButton(
              icon: Image.asset(
                "assets/logo/UK.jpg",
                width: 50.0,
                height: 50.0,
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/homeEn',
                );
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
          ),
        ]),
      ),
    );
  }
}
