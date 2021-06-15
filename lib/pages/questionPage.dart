import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class QuestionPage extends StatefulWidget {
  //classe des questions en français
  QuestionPageState createState() => QuestionPageState();
}

class QuestionPageState extends State {
  //todo: mettre ça à jour selon la valeur globale
  var im = Image.asset("assets/avatar/dog.png");
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
    TextStyle myTextStyle = TextStyle(fontSize: 20, color: Theme.of(context).accentColor);
    TextStyle blueText = TextStyle(fontSize: 20, color: Theme.of(context).primaryColor);
    TextStyle bigBlueText = TextStyle(fontSize: 30, color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold);
    //renvoie à la page d'acceuil si ce n'est pas l'heure
    if (heure < 11) Navigator.pushNamed(context, '/');
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.questionPageHeader),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              child: Text(
                question[i],
                textAlign: TextAlign.center,
                style: bigBlueText,
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/pageBlanchePagePositive');
                  },
                  child: Text(
                    repP[i],
                    textAlign: TextAlign.center,
                    style: myTextStyle,
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/pageBlanchePageNegative');
                    print("goto negative response");
                  },
                  child: Text(
                    repN[i],
                    textAlign: TextAlign.center,
                    style: myTextStyle,
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/pageBlanchePageNeutral');
                      print("goto donotwishtoanswer response");
                    },
                    child: Text(
                      AppLocalizations.of(context)!.doNotWishToAnswerQuestion,
                      textAlign: TextAlign.center,
                      style: myTextStyle,
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
