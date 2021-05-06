import 'dart:core';
import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'package:excel/excel.dart';
import 'dart:io';
import 'main.dart';

final date = formatDate(DateTime.now(), [dd, '-', mm, '-', yyyy]);

class HomeFr extends StatefulWidget {
  HomeFrState createState() => HomeFrState();
}

class HomeFrState extends State {
  int heure = DateTime.now().hour;
  bool bouton = false, bouton2 = false;
  var file, bytes, excel, ligne;
  int i = (DateTime.now().weekday) - 1;

  List<String> phrase = [
    "Bonjour ! J'espère que vous allez bien aujourd'hui.",
    "Bonjour, comment allez-vous ajourd'hui ?",
    "Bonjour. J'espère que vous êtes en forme.",
    "Bonjour. Est-ce que vous allez bien depuis hier ?",
    "Bonjour. Je viens prendre de vous nouvelles."
  ];

  void initState() {
    bouton = false;
    bouton2 = false;
    heure = DateTime.now().hour;

    file = "/storage/emulated/0/Download/Question.xlsx";
    //"C:/Users/Administrateur/Documents/TER/Question.xlsx"
    bytes = File(file).readAsBytesSync();
    excel = Excel.decodeBytes(bytes);
    Sheet sheetObject = excel['Question'];
    ligne = sheetObject.row(4);

    super.initState();
  }

  Widget build(BuildContext context) {
    return ScaffoldFr(
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
              )
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
  bool bouton = false, bouton2 = false;
  var file, bytes, excel, ligne;
  int i = (DateTime.now().weekday) - 1;

  List<String> phrase = [
    "Bonjour ! J'espère que vous allez bien aujourd'hui.",
    "Bonjour, comment allez-vous ajourd'hui ?",
    "Bonjour. J'espère que vous êtes en forme.",
    "Bonjour. Est-ce que vous allez bien depuis hier ?",
    "Bonjour. Je viens prendre de vous nouvelles."
  ];

  void initState() {
    bouton = false;
    bouton2 = false;
    heure = DateTime.now().hour;

    file = "/storage/emulated/0/Download/Question.xlsx";
    //"C:/Users/Administrateur/Documents/TER/Question.xlsx"
    bytes = File(file).readAsBytesSync();
    excel = Excel.decodeBytes(bytes);
    Sheet sheetObject = excel['Question'];
    ligne = sheetObject.row(4);

    super.initState();
  }

  Widget build(BuildContext context) {
    return ScaffoldEn(
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
  bool bouton = false, bouton2 = false;
  var file, bytes, excel, ligne;
  int i = (DateTime.now().weekday) - 1;

  List<String> phrase = [
    "Bonjour ! J'espère que vous allez bien aujourd'hui.",
    "Bonjour, comment allez-vous ajourd'hui ?",
    "Bonjour. J'espère que vous êtes en forme.",
    "Bonjour. Est-ce que vous allez bien depuis hier ?",
    "Bonjour. Je viens prendre de vous nouvelles."
  ];

  void initState() {
    bouton = false;
    bouton2 = false;
    heure = DateTime.now().hour;

    file = "/storage/emulated/0/Download/Question.xlsx";
    //"C:/Users/Administrateur/Documents/TER/Question.xlsx"
    bytes = File(file).readAsBytesSync();
    excel = Excel.decodeBytes(bytes);
    Sheet sheetObject = excel['Question'];
    ligne = sheetObject.row(4);

    super.initState();
  }

  Widget build(BuildContext context) {
    return ScaffoldJp(
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
