import 'dart:core';
import 'package:flutter/material.dart';
import 'main.dart';

//ce fichier gère tous les paramètres de l'application modifiables par l'utilisateur

class SettingsFr extends StatefulWidget {
  SettingsFrState createState() => SettingsFrState();
}

class SettingsFrState extends State {
  //cette classe gère la page des paramètres en français
  final controller =
      TextEditingController(); //le controlleur gère le texte entré par l'utilisateur
  static var h = 11; //heure par défaut
  static var taille = TextFrState.t;
  //cette variable est utilisé pour définir la taille de la police et elle est défini dans la classe TextFrState du fichier settings.dart
  Widget build(BuildContext context) {
    return ScaffoldFr(
      title: "Paramètres", //titre de la page
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/fond/pastel.jpg"),
              fit: BoxFit.cover), //image en arrière plan de la page
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 80.0, horizontal: 10.0),
          child: Column(children: [
            OutlinedButton(
              //premier bouton
              child: Row(
                children: [
                  Expanded(
                    child: Text("Langues",
                        style: TextStyle(
                            fontSize: taille,
                            color: Colors.black,
                            fontStyle: FontStyle.italic)),
                  ), //texte écrit sur le bouton
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ), //icône de flèche
                ],
              ),
              onPressed: () {
                //lorsqu'on presse le bouton, on est redirigé vers la page choixFr
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
              ), //apparence du bouton : couleur, ombre, bordures, taille
            ),
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
              //deuxième bouton
              child: Row(
                children: [
                  Expanded(
                    child: Text("Avatar",
                        style: TextStyle(
                            fontSize: taille,
                            color: Colors.black,
                            fontStyle: FontStyle.italic)),
                  ), //texte écrit sur le bouton
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ), //icône de flèche
                ],
              ),
              onPressed: () {
                //lorsqu'on presse le bouton, on est redirigé vers la page avatarFr
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
              ), //apparence du bouton : couleur, ombre, bordures, taille
            ),
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
              //troisième bouton
              child: Row(
                children: [
                  Expanded(
                    child: Text("Taille du texte",
                        style: TextStyle(
                            fontSize: taille,
                            color: Colors.black,
                            fontStyle: FontStyle.italic)),
                  ), //texte écrit sur le bouton
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ), //icône de flèche
                ],
              ),
              onPressed: () {
                //lorsqu'on presse le bouton, on est redirigé vers la page textFr
                Navigator.pushNamed(
                  context,
                  '/textFr',
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
              ), //apparence du bouton : couleur, ombre, bordures, taille
            ),
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
              //quatrième bouton
              child: Row(
                children: [
                  Expanded(
                    child: Text("Heure de la question",
                        style: TextStyle(
                            fontSize: taille,
                            color: Colors.black,
                            fontStyle: FontStyle.italic)),
                  ), //texte écrit sur le bouton
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ), //icône de flèche
                ],
              ),
              onPressed: () {
                //lorsqu'on presse le bouton, une boite de dialogue s'ouvre
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text(
                        'Entrez une heure'), //elle nous indique ce qu'il faut faire
                    actions: <Widget>[
                      TextField(
                          controller: controller,
                          keyboardType: TextInputType
                              .number, //le clavier numérique s'ouvre
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            suffixIcon: Icon(Icons.mode_edit),
                          ),
                          onSubmitted: (String str) {
                            setState(() {
                              //heure h est remplacé par l'entier entré par l'utilisateur
                              h = int.parse(str);
                            });
                          }),
                    ],
                  ),
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
              ), //apparence du bouton : couleur, ombre, bordures, taille
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
  //cette classe gère la page des paramètres en anglais
  final controller = TextEditingController();
  static var h = 11;
  static var taille = TextEnState.t;
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
                            fontSize: taille,
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
                            fontSize: taille,
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
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
              child: Row(
                children: [
                  Expanded(
                    child: Text("Text size",
                        style: TextStyle(
                            fontSize: taille,
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
                  '/textEn',
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
                    child: Text("Time of the question",
                        style: TextStyle(
                            fontSize: taille,
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
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Choose an hour'),
                    actions: <Widget>[
                      TextField(
                          controller: controller,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            suffixIcon: Icon(Icons.mode_edit),
                          ),
                          onSubmitted: (String str) {
                            setState(() {
                              h = int.parse(str);
                            });
                          }),
                    ],
                  ),
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
  //cette classe gère la page des paramètres en japonais
  final controller = TextEditingController();
  static var h = 11;
  static var taille = TextJpState.t;
  Widget build(BuildContext context) {
    return ScaffoldJp(
      title: "パラメータ",
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
                            fontSize: taille,
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
                            fontSize: taille,
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
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
              child: Row(
                children: [
                  Expanded(
                    child: Text("テキストサイズ",
                        style: TextStyle(
                            fontSize: taille,
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
                  '/textJp',
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
                    child: Text("質問の時間",
                        style: TextStyle(
                            fontSize: taille,
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
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('時間を選ぶ'),
                    actions: <Widget>[
                      TextField(
                          controller: controller,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            suffixIcon: Icon(Icons.mode_edit),
                          ),
                          onSubmitted: (String str) {
                            setState(() {
                              h = int.parse(str);
                            });
                          }),
                    ],
                  ),
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
  //cette classe gère le choix de la langue par l'utilisateur
  static var taille = TextFrState.t;
  //cette variable est utilisé pour définir la taille de la police et elle est défini dans la classe TextFrState du fichier settings.dart
  Widget build(BuildContext context) {
    return ScaffoldFr(
      title: "Langues", //nom de la page page sur l'appBar
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/fond/pastel.jpg"),
              fit: BoxFit.cover), //image de fond
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(
              vertical: 40.0, horizontal: 10.0), //marges de la page
          child: Column(
            children: [
              Text("Quelle langue souhaitez-vous utiliser ?",
                  style: TextStyle(
                      fontSize:
                          taille)), //texte qui invite l'utilisateur à choisir une langue
              SizedBox(height: 80),
              OutlinedButton(
                //premier bouton
                child: Row(
                  children: [
                    Expanded(
                      child: Text("Français",
                          style: TextStyle(
                              fontSize: taille,
                              color: Colors.black,
                              fontStyle: FontStyle.italic)),
                    ), //première langue proposée
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ), //icône de flèche
                  ],
                ),
                onPressed: () {
                  //lorqu'on presse le bouton, on est redirigé vers la page des paramètres de la langue sélectionnée
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
                ), //apparence du bouton : couleur, ombre, bordures, taille
              ),
              SizedBox(height: 20),
              OutlinedButton(
                //deuxième bouton
                child: Row(
                  children: [
                    Expanded(
                      child: Text("English",
                          style: TextStyle(
                              fontSize: taille,
                              color: Colors.black,
                              fontStyle: FontStyle.italic)),
                    ), //deuxième langue proposée
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ), //icône de flèche
                  ],
                ),
                onPressed: () {
                  //lorqu'on presse le bouton, on est redirigé vers la page des paramètres de la langue sélectionnée
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
                ), //apparence du bouton : couleur, ombre, bordures, taille
              ),
              SizedBox(height: 20),
              OutlinedButton(
                //troisième bouton
                child: Row(
                  children: [
                    Expanded(
                      child: Text("日本語",
                          style: TextStyle(
                              fontSize: taille,
                              color: Colors.black,
                              fontStyle: FontStyle.italic)),
                    ), //troisème langue proposée
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ), //icône de flèche
                  ],
                ),
                onPressed: () {
                  //lorqu'on presse le bouton, on est redirigé vers la page des paramètres de la langue sélectionnée
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
                ), //apparence du bouton : couleur, ombre, bordures, taille
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
  //cette classe gère le choix de la langue par l'utilisateur
  static var taille = TextEnState.t;
  Widget build(BuildContext context) {
    return ScaffoldEn(
      title: "Langues",
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/fond/pastel.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 10.0),
          child: Column(
            children: [
              Text("What language do you want to use ?",
                  style: TextStyle(fontSize: taille)),
              SizedBox(height: 80),
              OutlinedButton(
                child: Row(
                  children: [
                    Expanded(
                      child: Text("Français",
                          style: TextStyle(
                              fontSize: taille,
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
                              fontSize: taille,
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
                              fontSize: taille,
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
  //cette classe gère le choix de la langue par l'utilisateur
  static var taille = TextJpState.t;
  Widget build(BuildContext context) {
    return ScaffoldJp(
      title: "言語",
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/fond/pastel.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 10.0),
          child: Column(
            children: [
              Expanded(
                child:
                    Text("どの言語を使いたいですか ?", style: TextStyle(fontSize: taille)),
              ),
              OutlinedButton(
                child: Row(
                  children: [
                    Text("Français",
                        style: TextStyle(
                            fontSize: taille,
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
                              fontSize: taille,
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
                              fontSize: taille,
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

class TextFr extends StatefulWidget {
  TextFrState createState() => TextFrState();
}

class TextFrState extends State {
  //cette classe gère la taille de la police
  static double t = 30.0;
  //cette variable est utilisé pour définir la taille de la police par défaut
  Widget build(BuildContext context) {
    return ScaffoldJp(
      title: "Taille du texte", //titre de la page sur l'appBar
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/fond/pastel.jpg"),
              fit: BoxFit.cover), //arrière plan de la page
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(
              vertical: 40.0, horizontal: 10.0), //marges de la page
          child: Column(children: [
            Text("Sélectionnez la taille du texte :",
                style: TextStyle(
                    fontSize:
                        t)), //ce texte invite l'utilisateur à choisir la taille de texte
            SizedBox(height: 80),
            OutlinedButton(
              //premiere bouton
              child: Row(
                children: [
                  Expanded(
                    child: Text("Normal",
                        style: TextStyle(
                            fontSize: 30.0,
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
                //lorsqu'on presse ce bouton, on est redirigé vers la page d'accueil
                Navigator.pushNamed(
                  context,
                  '/',
                );
                setState(() {
                  t = 30.0; //on change la variable par défaut par la nouvelle taille
                });
              },
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
                shadowColor: Colors.grey,
                elevation: 5,
                side: BorderSide(color: Colors.grey, width: 2),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                minimumSize: Size(180, 55),
              ), //apparence du bouton
            ),
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
              //deuxième bouton
              child: Row(
                children: [
                  Expanded(
                    child: Text("Grand",
                        style: TextStyle(
                            fontSize: 40.0,
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
                //lorsqu'on presse ce bouton, on est redirigé vers la page d'accueil
                Navigator.pushNamed(
                  context,
                  '/',
                );
                setState(() {
                  t = 40.0; //on change la variable par défaut par la nouvelle taille
                });
              },
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
                shadowColor: Colors.grey,
                elevation: 5,
                side: BorderSide(color: Colors.grey, width: 2),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                minimumSize: Size(180, 55),
              ), //apparence du bouton
            ),
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
              //troisième bouton
              child: Row(
                children: [
                  Expanded(
                    child: Text("Très grand",
                        style: TextStyle(
                            fontSize: 45.0,
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
                //lorsqu'on presse ce bouton, on est redirigé vers la page d'accueil
                Navigator.pushNamed(
                  context,
                  '/',
                );
                setState(() {
                  t = 45.0; //on change la variable par défaut par la nouvelle taille
                });
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

class TextEn extends StatefulWidget {
  TextEnState createState() => TextEnState();
}

class TextEnState extends State {
  //cette page gère la taille de la police de texte en anglais
  static var t = 30.0;
  Widget build(BuildContext context) {
    return ScaffoldJp(
      title: "Size text",
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/fond/pastel.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 80.0, horizontal: 10.0),
          child: Column(children: [
            Text("Choose the text size :", style: TextStyle(fontSize: t)),
            SizedBox(height: 80),
            OutlinedButton(
              child: Row(
                children: [
                  Expanded(
                    child: Text("Regular",
                        style: TextStyle(
                            fontSize: 30.0,
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
                  '/homeEn',
                );
                setState(() {
                  t = 30.0;
                });
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
                    child: Text("Large",
                        style: TextStyle(
                            fontSize: 40.0,
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
                  '/homeEn',
                );
                setState(() {
                  t = 40.0;
                });
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
                    child: Text("Very large",
                        style: TextStyle(
                            fontSize: 50.0,
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
                  '/homeEn',
                );
                setState(() {
                  t = 50.0;
                });
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

class TextJp extends StatefulWidget {
  TextJpState createState() => TextJpState();
}

class TextJpState extends State {
  //cette page gère la taille de la police de texte en japonais
  static var t = 30.0;
  Widget build(BuildContext context) {
    return ScaffoldJp(
      title: "テキストサイズ",
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/fond/pastel.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 80.0, horizontal: 10.0),
          child: Column(children: [
            Text("テキストサイズを選択します :", style: TextStyle(fontSize: t)),
            SizedBox(height: 80),
            OutlinedButton(
              child: Row(
                children: [
                  Expanded(
                    child: Text("ノーマル",
                        style: TextStyle(
                            fontSize: 30.0,
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
                  '/homeJp',
                );
                setState(() {
                  t = 30.0;
                });
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
                    child: Text("ビッグ",
                        style: TextStyle(
                            fontSize: 40.0,
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
                  '/homeJp',
                );
                setState(() {
                  t = 40.0;
                });
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
                    child: Text("非常に大きい",
                        style: TextStyle(
                            fontSize: 50.0,
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
                  '/homeJp',
                );
                setState(() {
                  t = 50.0;
                });
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
