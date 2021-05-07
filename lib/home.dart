import 'dart:core';
import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'main.dart';

final date = formatDate(DateTime.now(), [dd, '-', mm, '-', yyyy]);

class HomeFr extends StatefulWidget {
  HomeFrState createState() => HomeFrState();
}

class HomeFrState extends State {
  int heure = DateTime.now().hour;
  int i = (DateTime.now().weekday) - 1;

  List<String> phrase = [
    "Bonjour ! J'espère que vous allez bien aujourd'hui.",
    "Bonjour, comment allez-vous ajourd'hui ?",
    "Bonjour. J'espère que vous êtes en forme.",
    "Bonjour. Est-ce que vous allez bien depuis hier ?",
    "Bonjour. Je viens prendre de vous nouvelles."
  ];

  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return ScaffoldFr(
      title: "Page d'accueil",
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
            Text(
              phrase[i],
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
                child: Text("Accéder à la question",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    )),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/questionFr',
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

class HomeEn extends StatefulWidget {
  HomeEnState createState() => HomeEnState();
}

class HomeEnState extends State {
  int heure = DateTime.now().hour;
  int i = (DateTime.now().weekday) - 1;

  List<String> phrase = [
    "Hello ! I hope you are well today.",
    "Hello, how are you today ?",
    "Hello. I hope you are well.",
    "Hello. Have you been well since yesterday ?",
    "Hello. I've come to check on you."
  ];

  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return ScaffoldEn(
      title: "Home",
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
            Text(
              phrase[i],
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
                child: Text("Access the question",
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
              )
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
  int heure = DateTime.now().hour;
  int i = (DateTime.now().weekday) - 1;

  List<String> phrase = [
    "こんにちは。 今日も元気に過ごしてくださいね.",
    "こんにちは、今日はお元気ですか ?",
    "こんにちは。 お元気ですか ?",
    "こんにちは。 昨日から元気にしていますか ?",
    "こんにちは。 あなたの様子を見に来ました."
  ];

  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return ScaffoldJp(
      title: "ホームページ",
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
            Text(
              phrase[i],
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
                child: Text("質問にアクセスする",
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
              )
          ]),
        ),
      ),
    );
  }
}
