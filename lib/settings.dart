import 'dart:core';
import 'package:flutter/material.dart';
import 'main.dart';

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
              image: AssetImage("assets/fond/pastel.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 80.0, horizontal: 10.0),
          child: Column(children: [
            OutlinedButton(
              child: Row(
                children: [
                  Expanded(
                    child: Text("Langues",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontStyle: FontStyle.italic)),
                  ),
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
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
              child: Row(
                children: [
                  Expanded(
                    child: Text("Avatar",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontStyle: FontStyle.italic)),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                ],
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/avatarFr',
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
          ]),
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
              image: AssetImage("assets/fond/pastel.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 80.0, horizontal: 10.0),
          child: Column(children: [
            OutlinedButton(
              child: Row(
                children: [
                  Expanded(
                    child: Text("Languages",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontStyle: FontStyle.italic)),
                  ),
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
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
              child: Row(
                children: [
                  Expanded(
                    child: Text("Avatar",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontStyle: FontStyle.italic)),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                ],
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/avatarEn',
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
          ]),
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
              image: AssetImage("assets/fond/pastel.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 80.0, horizontal: 10.0),
          child: Column(children: [
            OutlinedButton(
              child: Row(
                children: [
                  Expanded(
                    child: Text("言語",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontStyle: FontStyle.italic)),
                  ),
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
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
              child: Row(
                children: [
                  Expanded(
                    child: Text("アバター",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontStyle: FontStyle.italic)),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                ],
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/avatarJp',
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
          ]),
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
              image: AssetImage("assets/fond/pastel.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 80.0, horizontal: 10.0),
          child: Column(
            children: [
              Text("Quelle langue souhaitez-vous utiliser ?",
                  style: TextStyle(fontSize: 35)),
              SizedBox(height: 80),
              OutlinedButton(
                child: Row(
                  children: [
                    Expanded(
                      child: Text("Français",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontStyle: FontStyle.italic)),
                    ),
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
                  side: BorderSide(color: Colors.grey),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  // minimumSize: Size(180, 55),
                ),
              ),
              SizedBox(height: 20),
              OutlinedButton(
                child: Row(
                  children: [
                    Expanded(
                      child: Text("English",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontStyle: FontStyle.italic)),
                    ),
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
                  side: BorderSide(color: Colors.grey),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  // minimumSize: Size(180, 55),
                ),
              ),
              SizedBox(height: 20),
              OutlinedButton(
                child: Row(
                  children: [
                    Expanded(
                      child: Text("日本語",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontStyle: FontStyle.italic)),
                    ),
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
                  side: BorderSide(color: Colors.grey),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  // minimumSize: Size(180, 55),
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
              image: AssetImage("assets/fond/pastel.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 80.0, horizontal: 10.0),
          child: Column(
            children: [
              Text("What language do you want to use ?",
                  style: TextStyle(fontSize: 35)),
              SizedBox(height: 80),
              OutlinedButton(
                child: Row(
                  children: [
                    Expanded(
                      child: Text("Français",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontStyle: FontStyle.italic)),
                    ),
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
                    Expanded(
                      child: Text("English",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontStyle: FontStyle.italic)),
                    ),
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
                    Expanded(
                      child: Text("日本語",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontStyle: FontStyle.italic)),
                    ),
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
              image: AssetImage("assets/fond/pastel.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 80.0, horizontal: 10.0),
          child: Column(
            children: [
              Expanded(
                child: Text("どの言語を使いたいですか ?", style: TextStyle(fontSize: 35)),
              ),
              OutlinedButton(
                child: Row(
                  children: [
                    Text("Français",
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
                    Expanded(
                      child: Text("English",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontStyle: FontStyle.italic)),
                    ),
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
                    Expanded(
                      child: Text("日本語",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontStyle: FontStyle.italic)),
                    ),
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
