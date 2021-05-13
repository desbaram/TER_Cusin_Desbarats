import 'dart:core';
import 'package:flutter/material.dart';
import 'main.dart';
import 'avatar.dart';

class HomeFr extends StatefulWidget {
  //classe de la page d'accueil en français
  HomeFrState createState() => HomeFrState();
}

class HomeFrState extends State {
  var im = AvatarFrState.image;
  int heure = DateTime.now().hour; //heure actuelle
  int i = (DateTime.now().weekday) - 1;
  //chaque jour correspond à un chiffre (lundi = 1, mardi = 2,...), i = le chiffre du jour actuel - 1
  List<String> phrase = [
    "Bonjour ! J'espère que vous allez bien aujourd'hui.",
    "Bonjour, comment allez-vous aujourd'hui ?",
    "Bonjour. J'espère que vous êtes en forme.",
    "Bonjour. Est-ce que vous allez bien depuis hier ?",
    "Bonjour. Bienvenue dans votre journal."
  ]; //liste des phrases de bienvenue

  Widget build(BuildContext context) {
    return ScaffoldFr(
      title: "Page d'accueil", //nom inscrit sur l'appBar
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/fond/pastel.jpg"),
              fit: BoxFit.cover), //image de fond de la page
        ),
        child: Container(
          margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 80.0),
          //marge pour que les éléments ne soient pas collés au bord de page
          child: Column(children: [
            Text(phrase[i],
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30.0,
                )), //la phrase i de la liste, i étant un entier défini plus haut
            SizedBox(
              height: 80,
            ),
            if (heure > 11) //heure à laquelle apparait la question donc 12h
              ElevatedButton(
                //bouton qui permet d'accéder à la question quotidienne
                child: Text("Accéder à la question",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    )),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/questionFr',
                  ); //renvoie à la question lorsqu'on appuie
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
              ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: im,
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class HomeEn extends StatefulWidget {
  //classe de la page d'accueil en anglais
  HomeEnState createState() => HomeEnState();
}

class HomeEnState extends State {
  var im = AvatarEnState.image;
  int heure = DateTime.now().hour;
  int i = (DateTime.now().weekday) - 1;

  List<String> phrase = [
    "Hello ! I hope you are well today.",
    "Hello, how are you today ?",
    "Hello. I hope you are well.",
    "Hello. Have you been well since yesterday ?",
    "Hello. I've come to check on you."
  ];

  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return ScaffoldEn(
      title: "Home",
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/fond/pastel.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 80.0),
          child: Column(children: [
            Text(
              phrase[i],
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 30.0,
              ),
            ),
            SizedBox(
              height: 80,
            ),
            if (heure > 11)
              ElevatedButton(
                child: Text("Access the question",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    )),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/questionEn',
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
              ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: im,
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class HomeJp extends StatefulWidget {
  //classe de la page d'accueil en japonais
  HomeJpState createState() => HomeJpState();
}

class HomeJpState extends State {
  var im = AvatarJpState.image;
  int heure = DateTime.now().hour;
  int i = (DateTime.now().weekday) - 1;

  List<String> phrase = [
    "こんにちは。 今日も元気に過ごしてくださいね.",
    "こんにちは、今日はお元気ですか ?",
    "こんにちは。 お元気ですか ?",
    "こんにちは。 昨日から元気にしていますか ?",
    "こんにちは。 あなたの様子を見に来ました."
  ];

  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return ScaffoldJp(
      title: "ホームページ",
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/fond/pastel.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 80.0),
          child: Column(children: [
            Text(
              phrase[i],
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 30.0,
              ),
            ),
            SizedBox(
              height: 80,
            ),
            if (heure > 11)
              ElevatedButton(
                child: Text("質問にアクセスする",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    )),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/questionJp',
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
              ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: im,
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
