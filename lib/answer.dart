import 'dart:core';
import 'package:flutter/material.dart';
import 'main.dart';
import 'avatar.dart';
import 'settings.dart';

//le fichier answer.dart gère les pages qui s'affichent une fois que l'utilisateur a répondu à la question

double taille = TextFrState.t;
//cette variable est utilisé pour définir la taille de la police et elle est défini dans la classe TextFrState du fichier settings.dart

class AnswerFr extends StatefulWidget {
  AnswerFrState createState() => AnswerFrState();
}

class AnswerFrState extends State {
  //classe lorsque l'utilisateur a répondu à la question en français
  static bool avaible = true;
  static var contentFr;
  final controller =
      TextEditingController(); //le controlleur gère le texte entré par l'utilisateur
  var im = AvatarFrState
      .image; //cette variable représente l'avatar que l'utilisateur a choisi (ou cleui par défaut) dans la page avatar.dart
  int i = (DateTime.now().weekday) - 1;
  //chaque jour correspond à un chiffre (lundi = 1, mardi = 2,...), i = le chiffre du jour actuel - 1
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return ScaffoldFr(
      title: "Mikou-chan", //titre de la page
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/fond/pastel.jpg"),
              fit: BoxFit.cover), //image de fond de la page
        ),
        child: Container(
          margin: const EdgeInsets.only(
              left: 10.0,
              right: 10.0,
              top:
                  40.0), //marges pour ue les éléments ne soient pas sur les bords
          child: Column(children: [
            Text(
                "Si vous le désirez, écrivez quelques mots sur la journée d'hier.",
                textAlign: TextAlign.center, //alignement du texte
                style: TextStyle(
                  //taille et couleur du texte
                  color: Colors.blue,
                  fontSize: taille,
                )),
            SizedBox(
              height: 80,
            ),
            TextField(
                //ce widget est une zone d'entrée de texte par l'utilisateur, ici il sert à entrer une phrase dans le journal
                controller:
                    controller, //on définit le controlleur déclaré au début
                decoration: InputDecoration(
                  //apparence de la zone de texte
                  border: OutlineInputBorder(), //les bordures
                ),
                onSubmitted: (String str) {
                  setState(() {
                    contentFr =
                        str; //une fois validé, on conserve le message dans la variable content
                  });
                }),
            SizedBox(
              height: 80,
            ),
            TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue)),
              onPressed: () {
                avaible = false;
                Navigator.pushNamed(
                  context,
                  '/',
                ); //la route vers laquelle on est redirigé lorsqu'on clique sur le bouton
              },
              child: const Text("Retour à la page d'accueil",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  )),
            ),
            Expanded(
              child: Align(
                //position de l'élément "enfant" de Align donc ici Container
                alignment: Alignment.bottomLeft,
                child: Container(
                  //le container est un petit carré situé en bas à gauche de la page
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      //ce carré contient une image de l'avatar de l'utilisateur
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

class AnswerEn extends StatefulWidget {
  AnswerEnState createState() => AnswerEnState();
}

class AnswerEnState extends State {
  //classe lorsque l'utilisateur a répondu à la question en anglais
  static var contentEn;
  static bool avaible = true;
  var im = AvatarEnState.image;
  final controller = TextEditingController();
  int i = (DateTime.now().weekday) - 1;
  Widget build(BuildContext context) {
    return ScaffoldEn(
      title: "Mikou-chan",
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/fond/pastel.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 10.0),
          child: Column(children: [
            Text(
                "If you wish, write a few words about yesterday's day in the journal.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: taille,
                )),
            SizedBox(
              height: 80,
            ),
            TextField(
                controller: controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
                onSubmitted: (String str) {
                  setState(() {
                    contentEn = str;
                  });
                }),
            SizedBox(
              height: 80,
            ),
            TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue)),
              onPressed: () {
                avaible = false;
                Navigator.pushNamed(
                  context,
                  '/homeEn',
                ); //la route vers laquelle on est redirigé lorsqu'on clique sur le bouton
              },
              child: const Text("Back to the homepage",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  )),
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

class AnswerJp extends StatefulWidget {
  AnswerJpState createState() => AnswerJpState();
}

class AnswerJpState extends State {
  //classe lorsque l'utilisateur a répondu à la question en japonais
  static var contentJp;
  static bool avaible = true;
  var im = AvatarJpState.image;
  final controller = TextEditingController();
  int i = (DateTime.now().weekday) - 1;
  Widget build(BuildContext context) {
    return ScaffoldJp(
      title: "Mikou-chan",
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/fond/pastel.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 80.0, horizontal: 10.0),
          child: Column(children: [
            Text("よかったら、新聞に昨日のことを少し書いてみてください。",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30.0,
                )),
            SizedBox(
              height: 80,
            ),
            TextField(
                controller: controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
                onSubmitted: (String str) {
                  setState(() {
                    contentJp = str;
                  });
                }),
            SizedBox(
              height: 80,
            ),
            TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue)),
              onPressed: () {
                avaible = false;
                Navigator.pushNamed(
                  context,
                  '/homeJp',
                ); //la route vers laquelle on est redirigé lorsqu'on clique sur le bouton
              },
              child: const Text("ホームページに戻る",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  )),
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
