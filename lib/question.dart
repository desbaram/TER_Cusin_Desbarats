import 'dart:core';

import 'package:flutter/material.dart';

import 'avatar.dart';
import 'main.dart';

class QuestionPage extends StatefulWidget {
  //classe des questions en français
  QuestionPageState createState() => QuestionPageState();
}

class QuestionPageState extends State {
  var im = AvatarState.image;
  int heure = DateTime.now().hour; //heure actuelle
  int i = (DateTime.now().weekday) - 1;
  //chaque jour correspond à un chiffre (lundi = 1, mardi = 2,...), i = le chiffre du jour actuel - 1
  List<String> question = [
    "Avez-vous bien dormi cette semaine ?",
    "Avez-vous manqué d'appétit ou de motivation cette semaine ?",
    "Avez-vous fait quelque chose d'agréable cette semaine ?",
    "Avez-vous ressenti de la fatigue ou une douleur cette semaine ?",
    "Avez-vous oublié ou avez-vous l'impression d'avoir oublié quelque chose cette semaine ?",
    "Êtes-vous sorti ou avez-vous eu des discussions cette semaine ?",
    "Vous-êtes vous senti inquiet ou anxieux cette semaine ?"
  ]; //liste des questions
  List<String> repP = [
    "Oui, merci.",
    "Non, tout va bien.",
    "Au moins une fois.",
    "Non, tout va bien.",
    "Pas vraiment.",
    "Oui, plusieurs fois.",
    "Pas du tout."
  ]; //liste des réponses positives
  List<String> repN = [
    "Non, pas bien.",
    "Oui, un peu.",
    "Pas vraiment.",
    "Oui, un peu.",
    "Je crois.",
    "Pas vraiment.",
    "Quelques fois."
  ]; //liste des réponses négagives

  Widget build(BuildContext context) {
    return MainScaffold(
      title: "Mikou-chan", //nom de la page sur l'appBar (barre d'outils du haut)
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/fond/pastel.jpg"), fit: BoxFit.cover), //image en arrière plan de la page
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(
              vertical: 80.0, horizontal: 10.0), //marge pour que les éléments ne soient pas collés au bord de page
          child: Column(children: [
            if (heure > 11) //heure à laquelle apparait la question donc 12h
              Text(question[i],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 30.0,
                  )), //la question i de la liste, i étant un entier défini plus haut
            SizedBox(
              height: 80,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              if (heure > 11) //la réponse apparait à la même heure que la question donc 12h
                ElevatedButton(
                  //un bouton pour la réponse positive
                  child: Text(repP[i],
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      )), //la réponse positive i de la liste, i étant un entier défini plus haut
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/answerP_Fr',
                    ); //la route vers laquelle on est redirigé lorsqu'on choisit cette réponse
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                ),
              SizedBox(
                height: 20,
                width: 40,
              ),
              if (heure > 11) //la réponse apparait à la même heure que la question donc 12h
                ElevatedButton(
                  //un bouton pour la réponse négative
                  child: Text(repN[i],
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      )), //la réponse négative i de la liste, i étant un entier défini plus haut
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/answerN_Fr',
                    ); //la route vers laquelle on est redirigé lorsqu'on choisit cette réponse
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                ),
            ]),
            SizedBox(
              height: 20,
              width: 40,
            ),
            if (heure > 11) //la réponse apparait à la même heure que la question donc 12h
              ElevatedButton(
                //un bouton pour ceux qui ne souhaite pas répondre à cette question
                child: Text("Je ne souhaite pas répondre",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    )),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/noAnswer_Fr',
                  ); //la route vers laquelle on est redirigé lorsqu'on choisit de ne pas répondre
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
