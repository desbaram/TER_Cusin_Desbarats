import 'dart:core';

import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';

import 'avatar.dart';
import 'main.dart';

final date = formatDate(DateTime.now(), [dd, '-', mm, '-', yyyy]);

class AnswerPEn extends StatefulWidget {
  AnswerPEnState createState() => AnswerPEnState();
}

class AnswerPEnState extends State {
  var im = AssetImage("assets/avatar/robot.png");
  final form = GlobalKey<FormState>();
  int i = (DateTime.now().weekday) - 1;
  List<String> phP = [
    "Bonne nouvelle ! Si vous voulez parler de votre sommeil ou autre, n'hésitez pas à l'écrire.",
    "Prenez bien soin de vous ! Si quelque chose vous préoccupe, vous pouvez l'inscrire ici.",
    "Souhaitez-vous raconter ce qu'il s'est passé ?",
    "Super ! Si vous souhaitez partager quelque chose dans le journal, inscrivez-le ci-dessous.",
    "Tant mieux. N'hésiter pas à écrire quelques mots si vous le souhaitez.",
    "Souhaitez-vous raconter votre sortie/discussion ?",
    "C'est bien. Si quelque chose vous préoccupe, n'hésitez pas à le partager."
  ];
  Widget build(BuildContext context) {
    return ScaffoldEn(
      title: "Mikou-chan",
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/fond/pastel.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 80.0, horizontal: 10.0),
          child: Column(children: [
            Text("If you wish, write a few words about yesterday's day in the journal.",
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
                    hintText: 'Type here to enter text',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter text before submit";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  child: Text('Submit'),
                  onPressed: () {
                    if (form.currentState!.validate()) {
                      //récupération dans la base de données
                    }
                  },
                ),
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

class AnswerNEn extends StatefulWidget {
  AnswerNEnState createState() => AnswerNEnState();
}

class AnswerNEnState extends State {
  var im = AvatarEnState.image;
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
    return ScaffoldEn(
      title: "Mikou-chan",
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/fond/pastel.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 80.0, horizontal: 10.0),
          child: Column(children: [
            Text("If you wish, write a few words about yesterday's day in the journal.",
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
                    hintText: 'Type here to enter text',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter text before submit";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  child: Text('Submit'),
                  onPressed: () {
                    if (form.currentState!.validate()) {
                      //récupération dans la base de données
                    }
                  },
                ),
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

class NoAnswerEn extends StatefulWidget {
  NoAnswerEnState createState() => NoAnswerEnState();
}

class NoAnswerEnState extends State {
  var im = AvatarEnState.image;
  final form = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return ScaffoldEn(
      title: "Mikou-chan",
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/fond/pastel.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 80.0, horizontal: 10.0),
          child: Column(children: [
            Text("If you wish, write a few words about yesterday's day in the journal.",
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
                    hintText: 'Type here to enter text',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter text before submit";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  child: Text('Submit'),
                  onPressed: () {
                    if (form.currentState!.validate()) {
                      //récupération dans la base de données
                    }
                  },
                ),
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
