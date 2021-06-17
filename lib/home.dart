import 'dart:core';
import 'package:compagnon_virtuel/account.dart';
import 'package:compagnon_virtuel/settings.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'avatar.dart';

//le fichier home.dart gère les pages d'accueils

class HomeFr extends StatefulWidget {
  HomeFrState createState() => HomeFrState();
}

class HomeFrState extends State {
  //classe de la page d'accueil en français
  var h = SettingsFrState
      .h; //heure de la question définie dans les paramètres, fi hier settings.dart
  var im = AvatarFrState
      .image; //cette variable représente l'avatar que l'utilisateur a choisi (ou cleui par défaut) dans la page avatar.dart
  int heure = DateTime.now().hour; //heure actuelle
  String nom = AccountFrState
      .pseudo; //pseudo de l'utilisateur défini dans le fichier account.dart (ou pseudo par défaut si inchangé)
  double taille = TextFrState.t;
  //cette variable est utilisé pour définir la taille de la police et elle est défini dans la classe TextFrState du fichier settings.dart
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
          margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 40.0),
          //marge pour que les éléments ne soient pas collés au bord de page
          child: Column(children: [
            Text("Bonjour " + nom + ", que voulez-vous faire ?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: taille,
                )), //texte intégrant le pseudo de l'utilisateur
            SizedBox(
              height: 80,
            ),
            if (heure >
                h) //heure à laquelle apparait la question, 12h si inchangé dans les paramètres
              ElevatedButton(
                //bouton qui permet d'accéder à la question quotidienne
                child: Text("Répondre à la question du jour",
                    style: TextStyle(
                      fontSize: taille - 10,
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
            if (heure < h)
              Text(
                "La question sera disponible à $h h",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: taille,
                ),
              ), //si la question n'est pas encore disponible, on affiche l'heure à laquelle elle le sera
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              //bouton qui permet d'accéder au journal
              child: Text("Accéder au journal",
                  style: TextStyle(
                    fontSize: taille - 10,
                    color: Colors.white,
                  )),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/journalFr',
                ); //renvoie au journal lorsqu'on appuie
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
              ),
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

class HomeEn extends StatefulWidget {
  HomeEnState createState() => HomeEnState();
}

class HomeEnState extends State {
  //classe de la page d'accueil en anglais
  var h = SettingsFrState.h;
  var im = AvatarEnState.image;
  int heure = DateTime.now().hour;
  double taille = TextEnState.t;
  Widget build(BuildContext context) {
    return ScaffoldEn(
      title: "Home",
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/fond/pastel.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 40.0),
          child: Column(children: [
            Text(
              "Hello, what do you want to do ?",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blue,
                fontSize: taille,
              ),
            ),
            SizedBox(
              height: 80,
            ),
            if (heure > h)
              ElevatedButton(
                child: Text("Answer the question of the day",
                    style: TextStyle(
                      fontSize: taille - 10,
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
            if (heure < h)
              Text(
                "The question will be avaible at $h hour",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: taille,
                ),
              ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              //bouton qui permet d'accéder au journal
              child: Text("Access the diary",
                  style: TextStyle(
                    fontSize: taille - 10,
                    color: Colors.white,
                  )),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/journalEn',
                ); //renvoie au journal lorsqu'on appuie
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
  HomeJpState createState() => HomeJpState();
}

class HomeJpState extends State {
  //classe de la page d'accueil en japonais
  var h = SettingsFrState.h;
  var im = AvatarJpState.image;
  int heure = DateTime.now().hour;
  double taille = TextJpState.t;
  Widget build(BuildContext context) {
    return ScaffoldJp(
      title: "ホームページ",
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/fond/pastel.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 40.0),
          child: Column(children: [
            Text(
              "こんにちは、あなたは何をしたいですか ?",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blue,
                fontSize: taille,
              ),
            ),
            SizedBox(
              height: 80,
            ),
            if (heure > h)
              ElevatedButton(
                child: Text("その日の質問に答える",
                    style: TextStyle(
                      fontSize: taille - 10,
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
            if (heure < h)
              Text(
                "質問は後で利用可能になります",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: taille,
                ),
              ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              //bouton qui permet d'accéder au journal
              child: Text("議題にアクセスする",
                  style: TextStyle(
                    fontSize: taille - 10,
                    color: Colors.white,
                  )),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/journalJp',
                ); //renvoie au journal lorsqu'on appuie
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
