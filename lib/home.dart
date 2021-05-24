import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'main.dart';

class Home extends StatefulWidget {
  //classe de la page d'accueil en français
  HomeState createState() => HomeState();
}

class HomeState extends State {
  //todo: mettre ça à jour selon la valeur globale
  var im = AssetImage("assets/avatar/robot.png");
  int heure = DateTime.now().hour; //heure actuelle
  var e1;
  Widget build(BuildContext context) {
    return MainScaffold(
      title: AppLocalizations.of(context)!.homePageHeader, //nom inscrit sur l'appBar
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/fond/pastel.jpg"), fit: BoxFit.cover), //image de fond de la page
        ),
        child: Container(
          margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 80.0),
          //marge pour que les éléments ne soient pas collés au bord de page
          child: Column(children: [
            Text(AppLocalizations.of(context)!.welcomeMessage,
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
                key: e1,
                //bouton qui permet d'accéder à la question quotidienne

                child: Text(AppLocalizations.of(context)!.answerMessage,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    )),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/questionPage',
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
              child: Text(AppLocalizations.of(context)!.accessLogMessage,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  )),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/journalPage',
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
