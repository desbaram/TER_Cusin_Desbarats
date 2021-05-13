import 'dart:core';
import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'main.dart';
import 'avatar.dart';

final date = formatDate(DateTime.now(), [dd, '-', mm, '-', yyyy]);

class AnswerPJp extends StatefulWidget {
  AnswerPJpState createState() => AnswerPJpState();
}

class AnswerPJpState extends State {
  var im = AvatarJpState.image;
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
            Form(
              key: form,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'ここに文字を入力してください',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "送信前の文字入力";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      child: Text('参加する'),
                      onPressed: () {
                        if (form.currentState!.validate()) {
                          //récupération sans la base de données
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

class AnswerNJp extends StatefulWidget {
  AnswerNJpState createState() => AnswerNJpState();
}

class AnswerNJpState extends State {
  var im = AvatarJpState.image;
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
            Form(
              key: form,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'ここに文字を入力してください',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "送信前の文字入力";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      child: Text('参加する'),
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

class NoAnswerJp extends StatefulWidget {
  NoAnswerJpState createState() => NoAnswerJpState();
}

class NoAnswerJpState extends State {
  var im = AvatarJpState.image;
  final form = GlobalKey<FormState>();
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
            Form(
              key: form,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'ここに文字を入力してください',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "送信前の文字入力";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      child: Text('参加する'),
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
