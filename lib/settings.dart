import 'dart:core';
import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'main.dart';

final date = formatDate(DateTime.now(), [dd, '-', mm, '-', yyyy]);

class SettingsFr extends StatefulWidget {
  SettingsFrState createState() => SettingsFrState();
}

class SettingsFrState extends State {
  Widget build(BuildContext context) {
    return ScaffoldFr(
      title: "Paramètres",
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://i.pinimg.com/originals/7c/41/59/7c41595a1fd265e66055f4f49b4844b0.jpg"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(10.0),
            child: OutlinedButton(
              child: Row(
                children: [
                  Text("Langues",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontStyle: FontStyle.italic)),
                  SizedBox(width: 200),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                ],
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/choixFr',
                );
              },
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
                shadowColor: Colors.grey,
                elevation: 5,
                side: BorderSide(color: Colors.grey, width: 2),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                minimumSize: Size(180, 55),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SettingsEn extends StatefulWidget {
  SettingsEnState createState() => SettingsEnState();
}

class SettingsEnState extends State {
  Widget build(BuildContext context) {
    return ScaffoldEn(
      title: "Settings",
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://i.pinimg.com/originals/7c/41/59/7c41595a1fd265e66055f4f49b4844b0.jpg"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(10.0),
            child: OutlinedButton(
              child: Row(
                children: [
                  Text("Languages",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontStyle: FontStyle.italic)),
                  SizedBox(width: 172),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                ],
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/choixEn',
                );
              },
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
                shadowColor: Colors.grey,
                elevation: 5,
                side: BorderSide(color: Colors.grey, width: 2),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                minimumSize: Size(180, 55),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SettingsJp extends StatefulWidget {
  SettingsJpState createState() => SettingsJpState();
}

class SettingsJpState extends State {
  Widget build(BuildContext context) {
    return ScaffoldJp(
      title: "'パラメータ'",
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://i.pinimg.com/originals/7c/41/59/7c41595a1fd265e66055f4f49b4844b0.jpg"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(10.0),
            child: OutlinedButton(
              child: Row(
                children: [
                  Text("言語",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontStyle: FontStyle.italic)),
                  SizedBox(width: 255),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                ],
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/choixJp',
                );
              },
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
                shadowColor: Colors.grey,
                elevation: 5,
                side: BorderSide(color: Colors.grey, width: 2),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                minimumSize: Size(180, 55),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ChoixFr extends StatefulWidget {
  ChoixFrState createState() => ChoixFrState();
}

class ChoixFrState extends State {
  Widget build(BuildContext context) {
    return ScaffoldFr(
      title: "Langues",
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://i.pinimg.com/originals/7c/41/59/7c41595a1fd265e66055f4f49b4844b0.jpg"),
              fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 80.0, horizontal: 10.0),
          child: Column(
            children: [
              Text("En quelle langue souhaitez-vous mettre l'application ?",
                  style: TextStyle(fontSize: 35)),
              SizedBox(height: 80),
              OutlinedButton(
                child: Row(
                  children: [
                    Text("Français",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontStyle: FontStyle.italic)),
                    SizedBox(width: 200),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/settingsFr',
                  );
                },
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shadowColor: Colors.grey,
                  elevation: 5,
                  side: BorderSide(color: Colors.grey, width: 2),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  minimumSize: Size(180, 55),
                ),
              ),
              SizedBox(height: 20),
              OutlinedButton(
                child: Row(
                  children: [
                    Text("Anglais",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontStyle: FontStyle.italic)),
                    SizedBox(width: 215),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/settingsEn',
                  );
                },
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shadowColor: Colors.grey,
                  elevation: 5,
                  side: BorderSide(color: Colors.grey, width: 2),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  minimumSize: Size(180, 55),
                ),
              ),
              SizedBox(height: 20),
              OutlinedButton(
                child: Row(
                  children: [
                    Text("Japonais",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontStyle: FontStyle.italic)),
                    SizedBox(width: 195),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/settingsJp',
                  );
                },
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shadowColor: Colors.grey,
                  elevation: 5,
                  side: BorderSide(color: Colors.grey, width: 2),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  minimumSize: Size(180, 55),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChoixEn extends StatefulWidget {
  ChoixEnState createState() => ChoixEnState();
}

class ChoixEnState extends State {
  Widget build(BuildContext context) {
    return ScaffoldEn(
      title: "Langues",
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://i.pinimg.com/originals/7c/41/59/7c41595a1fd265e66055f4f49b4844b0.jpg"),
              fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 80.0, horizontal: 10.0),
          child: Column(
            children: [
              Text("What language would you like the application to be in ?",
                  style: TextStyle(fontSize: 35)),
              SizedBox(height: 80),
              OutlinedButton(
                child: Row(
                  children: [
                    Text("French",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontStyle: FontStyle.italic)),
                    SizedBox(width: 222),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/settingsFr',
                  );
                },
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shadowColor: Colors.grey,
                  elevation: 5,
                  side: BorderSide(color: Colors.grey, width: 2),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  minimumSize: Size(180, 55),
                ),
              ),
              SizedBox(height: 20),
              OutlinedButton(
                child: Row(
                  children: [
                    Text("English",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontStyle: FontStyle.italic)),
                    SizedBox(width: 215),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/settingsEn',
                  );
                },
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shadowColor: Colors.grey,
                  elevation: 5,
                  side: BorderSide(color: Colors.grey, width: 2),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  minimumSize: Size(180, 55),
                ),
              ),
              SizedBox(height: 20),
              OutlinedButton(
                child: Row(
                  children: [
                    Text("Japanese",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontStyle: FontStyle.italic)),
                    SizedBox(width: 188),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/settingsJp',
                  );
                },
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shadowColor: Colors.grey,
                  elevation: 5,
                  side: BorderSide(color: Colors.grey, width: 2),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  minimumSize: Size(180, 55),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChoixJp extends StatefulWidget {
  ChoixJpState createState() => ChoixJpState();
}

class ChoixJpState extends State {
  Widget build(BuildContext context) {
    return ScaffoldJp(
      title: "言語",
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://i.pinimg.com/originals/7c/41/59/7c41595a1fd265e66055f4f49b4844b0.jpg"),
              fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 80.0, horizontal: 10.0),
          child: Column(
            children: [
              Text("アプリケーションをどの言語で表示するか ?", style: TextStyle(fontSize: 35)),
              SizedBox(height: 80),
              OutlinedButton(
                child: Row(
                  children: [
                    Text("フランス語",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontStyle: FontStyle.italic)),
                    SizedBox(width: 165),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/settingsFr',
                  );
                },
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shadowColor: Colors.grey,
                  elevation: 5,
                  side: BorderSide(color: Colors.grey, width: 2),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  minimumSize: Size(180, 55),
                ),
              ),
              SizedBox(height: 20),
              OutlinedButton(
                child: Row(
                  children: [
                    Text("英語",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontStyle: FontStyle.italic)),
                    SizedBox(width: 250),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/settingsEn',
                  );
                },
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shadowColor: Colors.grey,
                  elevation: 5,
                  side: BorderSide(color: Colors.grey, width: 2),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  minimumSize: Size(180, 55),
                ),
              ),
              SizedBox(height: 20),
              OutlinedButton(
                child: Row(
                  children: [
                    Text("日本語",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontStyle: FontStyle.italic)),
                    SizedBox(width: 220),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/settingsJp',
                  );
                },
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shadowColor: Colors.grey,
                  elevation: 5,
                  side: BorderSide(color: Colors.grey, width: 2),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  minimumSize: Size(180, 55),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
