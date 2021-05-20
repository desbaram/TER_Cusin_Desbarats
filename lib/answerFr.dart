import 'dart:core';

import 'package:flutter/material.dart';

import 'avatar.dart';
import 'main.dart';

class AnswerPFr extends StatefulWidget {
  //classe lorsque l'utilisateur choisit la réponse positive
  AnswerPFrState createState() => AnswerPFrState();
}

class AnswerPFrState extends State {
  var im = AvatarState.image;
  final form = GlobalKey<FormState>();
  int i = (DateTime.now().weekday) - 1;
  //chaque jour correspond à un chiffre (lundi = 1, mardi = 2,...), i = le chiffre du jour actuel - 1
  List<String> phP = [
    "Bonne nouvelle ! Si vous voulez parler de votre sommeil ou autre, n'hésitez pas à l'écrire.",
    "Prenez bien soin de vous ! Si quelque chose vous préoccupe, vous pouvez l'inscrire ici.",
    "Souhaitez-vous raconter ce qu'il s'est passé ?",
    "Super ! Si vous souhaitez partager quelque chose dans le journal, inscrivez-le ci-dessous.",
    "Tant mieux. N'hésiter pas à écrire quelques mots si vous le souhaitez.",
    "Souhaitez-vous raconter votre sortie/discussion ?",
    "C'est bien. Si quelque chose vous préoccupe, n'hésitez pas à le partager."
  ]; //phrase de réponse à la réponse de l'utiliseur
  Widget build(BuildContext context) {
    return MainScaffold(
      title: "Mikou-chan", //nom de la page sur l'appBar
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/fond/pastel.jpg"), fit: BoxFit.cover), //image de fond de la page
        ),
        child: Container(
          margin: const EdgeInsets.only(
              left: 10.0, right: 10.0, top: 80.0), //marge pour que les éléments ne soient pas sur les bords de la page
          child: Column(children: [
            Text(phP[i],
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30.0,
                )), //la phrase de réponse i de la liste, i étant un entier défini plus haut
            SizedBox(
              height: 80,
            ),
            Form(
              key: form,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Taper ici pour entrer le texte',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Entrer du texte avant d'envoyer";
                    }
                    return null;
                  },
                ), //zone de texte où l'utilisateur peut écrire ce qu'il veut sur sa journée par exemple
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    //bouton pour envoyer le texte écrit dans la base de données
                    child: Text('Envoyer'),
                    onPressed: () {
                      if (form.currentState!.validate()) {
                        //récupération réponse
                      }
                    }),
              ]),
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

class AnswerNFr extends StatefulWidget {
  //classe lorsque l'utilisateur choisit la réponse négative
  AnswerNFrState createState() => AnswerNFrState();
}

class AnswerNFrState extends State {
  var im = AvatarState.image;
  final form = GlobalKey<FormState>();
  int i = (DateTime.now().weekday) - 1;
  List<String> phN = [
    "Quelque chose vous préoccupe ? N'hésitez pas à le partager, même si c'est quelque chose d'anodin.",
    "Quelque chose vous préoccupe ? Vous pouvez l'inscrire dans le journal si vous le souhaitez.",
    "Vraiment ? Vous sentez-vous triste, fatigué ou malade ? Si vous le désirer, parlez-en dans le journal.",
    "Où avez-vous mal ? Dites-en plus, si vous le souhaitez.",
    "Ça arrive parfois... Voulez vous en parler ?",
    "Quelles en sont les raisons ? Avez-vous envie de rencontrer quelqu'un ou d'aller quelque part ?.",
    "Souhaitez-vous parler de ce qui vous rend anxieux ou stressé ?"
  ];
  Widget build(BuildContext context) {
    return MainScaffold(
      title: "Mikou-chan",
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/fond/pastel.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 80.0),
          child: Column(children: [
            Text(phN[i],
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30.0,
                )),
            SizedBox(
              height: 80,
            ),
            Form(
              key: form,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Taper ici pour entrer le texte',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Entrer du texte avant d'envoyer";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    child: Text('Envoyer'),
                    onPressed: () {
                      if (form.currentState!.validate()) {
                        // Process data.
                      }
                    }),
              ]),
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

class NoAnswerFr extends StatefulWidget {
  //classe lorsque l'utilisateur choisit de ne pas répondre à la question
  NoAnswerFrState createState() => NoAnswerFrState();
}

class NoAnswerFrState extends State {
  final form = GlobalKey<FormState>();
  var im = AvatarState.image;
  Widget build(BuildContext context) {
    return MainScaffold(
      title: "Mikou-chan",
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/fond/pastel.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 80.0),
          child: Column(children: [
            Text("Si vous le souhaitez, inscrivez quelques mots sur la journée d'hier dans le journal.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30.0,
                )),
            SizedBox(
              height: 80,
            ),
            Form(
              key: form,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Taper ici pour entrer le texte',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Entrer du texte avant d'envoyer";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    child: Text('Envoyer'),
                    onPressed: () {
                      if (form.currentState!.validate()) {
                        // Process data.
                      }
                    }),
              ]),
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
