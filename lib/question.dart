import 'dart:core';
import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'main.dart';

final date = formatDate(DateTime.now(), [dd, '-', mm, '-', yyyy]);

class QuestionFr extends StatefulWidget {
  QuestionFrState createState() => QuestionFrState();
}

class QuestionFrState extends State {
  int heure = DateTime.now().hour;
  var file, bytes, excel, ligne;
  int i = (DateTime.now().weekday) - 1;

  List<String> question = [
    "Avez-vous bien dormi cette semaine ?",
    "Avez-vous manqué d'appétit ou de motivation cette semaine ?",
    "Avez-vous fait quelque chose d'agréable cette semaine ?",
    "Avez-vous ressenti de la fatigue ou une douleur cette semaine ?",
    "Avez-vous oublié ou avez-vous l'impression d'avoir oublié quelque chose cette semaine ?",
    "Êtes-vous sorti ou avez-vous eu des discussions cette semaine ?",
    "Vous-êtes vous senti inquiet ou anxieux cette semaine ?"
  ];
  List<String> repP = [
    "Oui, merci.",
    "Non, tout va bien.",
    "Au moins une fois.",
    "Non, tout va bien.",
    "Pas vraiment.",
    "Oui, plusieurs fois.",
    "Pas du tout."
  ];
  List<String> repN = [
    "Non, pas bien.",
    "Oui, un peu.",
    "Pas vraiment.",
    "Oui, un peu.",
    "Je crois.",
    "Pas vraiment.",
    "Quelques fois."
  ];

  Widget build(BuildContext context) {
    return ScaffoldFr(
      title: "Mikou-chan",
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://i.pinimg.com/originals/7c/41/59/7c41595a1fd265e66055f4f49b4844b0.jpg"),
              fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.all(10.0),
          child: Column(children: [
            SizedBox(
              height: 80,
            ),
            if (heure > 11)
              Text(
                question[i],
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30.0,
                ),
              ),
            SizedBox(
              height: 80,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              if (heure > 11)
                ElevatedButton(
                  child: Text(repP[i],
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      )),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/answerP_Fr',
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                ),
              SizedBox(
                height: 20,
                width: 40,
              ),
              if (heure > 11)
                ElevatedButton(
                  child: Text(repN[i],
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      )),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/answerN_Fr',
                    );
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
            if (heure > 11)
              ElevatedButton(
                child: Text("Je ne souhaite pas répondre",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    )),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/noAnswer_Fr',
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
              ),
          ]),
        ),
      ),
    );
  }
}

class QuestionEn extends StatefulWidget {
  QuestionEnState createState() => QuestionEnState();
}

class QuestionEnState extends State {
  int heure = DateTime.now().hour;
  bool bouton = false, bouton2 = false;
  var file, bytes, excel, ligne;
  int i = (DateTime.now().weekday) - 1;

  List<String> question = [
    "Did you sleep well this week ?",
    "Have you lacked appetite or motivation this week ?",
    "Did you do anything enjoyable this week ?",
    "Have you experienced any fatigue or pain this week ?",
    "Have you forgotten or do you feel you have forgotten something this week ?",
    "Have you been out or had any discussions this week ?",
    "Have you felt worried or anxious this week ?"
  ];
  List<String> repP = [
    "Yes, thank you.",
    "No, everything is fine.",
    "At least once.",
    "No, everything is fine.",
    "Not really.",
    "Yes, several times.",
    "Not at all."
  ];
  List<String> repN = [
    "No, not well.",
    "Yes, a little.",
    "Not really.",
    "Yes, a little.",
    "I think so.",
    "Not really.",
    "A few times."
  ];

  Widget build(BuildContext context) {
    return ScaffoldEn(
      title: "Mikou-chan",
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://i.pinimg.com/originals/7c/41/59/7c41595a1fd265e66055f4f49b4844b0.jpg"),
              fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.all(10.0),
          child: Column(children: [
            SizedBox(
              height: 80,
            ),
            if (heure > 11)
              Text(
                question[i],
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30.0,
                ),
              ),
            SizedBox(
              height: 80,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              if (heure > 11)
                ElevatedButton(
                  child: Text(repP[i],
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      )),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/answerP_En',
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                ),
              SizedBox(
                height: 20,
                width: 40,
              ),
              if (heure > 11)
                ElevatedButton(
                  child: Text(repN[i],
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      )),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/answerN_En',
                    );
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
            if (heure > 11)
              ElevatedButton(
                child: Text("I don't want to answer",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    )),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/noAnswer_En',
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
              ),
          ]),
        ),
      ),
    );
  }
}

class QuestionJp extends StatefulWidget {
  QuestionJpState createState() => QuestionJpState();
}

class QuestionJpState extends State {
  int heure = DateTime.now().hour;
  bool bouton = false, bouton2 = false;
  var file, bytes, excel, ligne;
  int i = (DateTime.now().weekday) - 1;

  List<String> question = [
    "今週はよく眠れましたか ?",
    "今週は食欲がなかったり、やる気が出なかったりしましたか ?",
    "今週は何か楽しいことがありましたか ?",
    "今週、疲れや痛みを感じましたか ?",
    "今週、何かを忘れたり、忘れたように感じたりしましたか ?",
    "今週は何か外出したり、会話をしたりしましたか ?",
    "今週、心配事や不安なことがありましたか ?"
  ];
  List<String> repP = [
    "はい、ありがとうございます。",
    "いいえ、大丈夫です.",
    "少なくとも一度は.",
    "いや、何も問題ない.",
    "そうではありません.",
    "はい、何度かあります.",
    "全くありません."
  ];
  List<String> repN = [
    "いや、よくない.",
    "はい、少しだけ.",
    "そうではありません.",
    "はい、少しだけ.",
    "そうですね.",
    "そうではありません.",
    "数回です."
  ];

  Widget build(BuildContext context) {
    return ScaffoldJp(
      title: "Mikou-chan",
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://i.pinimg.com/originals/7c/41/59/7c41595a1fd265e66055f4f49b4844b0.jpg"),
              fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.all(10.0),
          child: Column(children: [
            SizedBox(
              height: 80,
            ),
            if (heure > 11)
              Text(
                question[i],
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30.0,
                ),
              ),
            SizedBox(
              height: 80,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              if (heure > 11)
                ElevatedButton(
                  child: Text(repP[i],
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      )),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/answerP_Jp',
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                ),
              SizedBox(
                height: 20,
                width: 15,
              ),
              if (heure > 11)
                ElevatedButton(
                  child: Text(repN[i],
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      )),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/answerN_Jp',
                    );
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
            if (heure > 11)
              ElevatedButton(
                child: Text("私は答えたくありません。",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    )),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/noAnswer_Jp',
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
              ),
          ]),
        ),
      ),
    );
  }
}
