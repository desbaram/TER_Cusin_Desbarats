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
            Text("Bonjour, que voulez-vous faire ?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30.0,
                )),
            SizedBox(
              height: 80,
            ),
            if (heure > 11) //heure à laquelle apparait la question donc 12h
              ElevatedButton(
                //bouton qui permet d'accéder à la question quotidienne
                child: Text("Répondre à la question du jour",
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
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              //bouton qui permet d'accéder au journal
              child: Text("Accéder au journal",
                  style: TextStyle(
                    fontSize: 20,
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
              "Hello, what do you want to do ?",
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
                child: Text("Answer the question of the day",
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
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              //bouton qui permet d'accéder au journal
              child: Text("Access the diary",
                  style: TextStyle(
                    fontSize: 20,
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
  //classe de la page d'accueil en japonais
  HomeJpState createState() => HomeJpState();
}

class HomeJpState extends State {
  var im = AvatarJpState.image;
  int heure = DateTime.now().hour;

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
              "こんにちは、あなたは何をしたいですか ?",
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
                child: Text("その日の質問に答える",
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
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              //bouton qui permet d'accéder au journal
              child: Text("議題にアクセスする",
                  style: TextStyle(
                    fontSize: 20,
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
