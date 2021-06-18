import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'main.dart';
import 'dart:math';
import 'settings.dart';

//le fichier game.dart gère un petit jeu de calcul mental implémenté dans l'application

class GameFr extends StatefulWidget {
  GameFrState createState() => GameFrState();
}

class GameFrState extends State {
  //cette classe gère le jeu en français
  var a = false;
  var b;
  var total = 0; //nombre de calculs faits
  var bon = 0; //nombre de bonnes réponses données
  final controller =
      TextEditingController(); //le controlleur gère le texte entré par l'utilisateur
  String reponse = "";
  static int ch =
      Random().nextInt(8) + 2; //variable entier aléatoire entre 2 et 10
  String chiffre = '$ch'; //variable qui transforme l'entier ch en String
  static int ch2 =
      Random().nextInt(8) + 2; //variable entier aléatoire entre 2 et 10
  String chiffre2 = '$ch2'; //variable qui transforme l'entier ch en String
  int rep = ch * ch2; //variable qui contient la réponse au calcul de ch*ch2
  double taille = TextFrState.t;
  //cette variable est utilisé pour définir la taille de la police et elle est défini dans la classe TextFrState du fichier settings.dart
  Widget build(BuildContext context) {
    return ScaffoldFr(
      title: "Jeu", //titre de la page
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/fond/pastel.jpg"),
              fit: BoxFit.cover), //image d'arrière plan de la page
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(
              vertical: 40.0, horizontal: 10.0), //marges de la page
          child: Column(children: [
            Text('Résolvez ce calcul : ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  //couleur et style du texte
                  color: Colors.blue,
                  fontSize: taille,
                )), //texte qui invite l'utilisateur à résoudre le calcul
            SizedBox(
              height: 40,
            ),
            Text(chiffre + " X " + chiffre2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  //couleur et style du texte
                  color: Colors.blue,
                  fontSize: taille,
                )), //affichage du calcul
            SizedBox(
              height: 40,
            ),
            TextField(
              //zone de texte où l'utilisateur peut entre sa réponse au calcul
              controller: controller,
              keyboardType: TextInputType
                  .number, //le clavier du téléphone affiche que des chiffres
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ], //seuls les chiffres sont accéptés
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Entrez votre réponse',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              //bouton pour valider sa réponse
              child: Text("Envoyer",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: taille - 10,
                  )),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue)),
              onPressed: () {
                setState(() {
                  //lorsqu'on appuie sur le bouton, la variable réponse = à la réponse saisie par l'utilisateur
                  reponse = controller.text;
                  if (int.parse(controller.text) == rep) {
                    //si la réponse est juste (donc égal à la variable qui contient la bonne réponse)
                    a = true; //on affiche le texte
                    b = "Bravo, bonne réponse !"; //variable du texte
                    total += 1; //on ajoute le calcul au total
                    bon += 1; //on ajoute la bonne réponse
                  } else {
                    //si la réponse est fausse (donc pas égal à la variable qui contient la bonne réponse)
                    a = true; //on affiche le texte
                    b = "Mauvaise réponse."; //variable du texte
                    total += 1; //on ajoute le calcul au total
                  }
                });
              },
            ),
            SizedBox(
              height: 38,
            ),
            if (a)
              Text(b,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: taille,
                  )), //le texte qui affiche si la réponse est juste ou non
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.topRight,
              child: Container(
                width: 180,
                child: OutlinedButton(
                  //bouton pour passer au calcul suivant
                  child: Row(
                    children: [
                      Expanded(
                        child: Text("Suivant",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: taille,
                                color: Colors.blue,
                                fontStyle: FontStyle.italic)),
                      ), // texte qui indique que c'est pour changer de calcul
                      SizedBox(width: 10),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.blue,
                      ), //icône de flèche
                    ],
                  ),
                  onPressed: () {
                    //les variables ch et ch2 deviennent de nouveaux chiffres aléatoires et le texte, qui indique si la réponse est juste ou non, disparait
                    ch = new Random().nextInt(8) + 2;
                    ch2 = new Random().nextInt(8) + 2;
                    a = false;
                    Navigator.pushReplacement(
                        //on recharge la page pour prendre en compte les changements
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => super.widget));
                  },
                  style: OutlinedButton.styleFrom(
                    //apparence du bouton
                    backgroundColor: Colors.transparent,
                    side: BorderSide(color: Colors.blue, width: 2),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    minimumSize: Size(50, 50),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              alignment: Alignment.center,
              child: Container(
                width: 280,
                child: OutlinedButton(
                  child: Row(children: [
                    //bouton pour arrêter le jeu
                    Expanded(
                      child: Text("Fin de la partie",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: taille,
                              color: Colors.white,
                              fontStyle: FontStyle.italic)),
                    ), // texte qui indique que c'est pour changer de calcul
                    SizedBox(width: 10),
                    Icon(
                      Icons.power_settings_new,
                      color: Colors.white,
                    ), //icône de flèche
                  ]),
                  onPressed: () {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: Text(
                            'Partie terminée !'), //elle nous indique la fin de la partie
                        content:
                            Text("Vous avez $bon bonnes réponses sur $total"),
                        //elle nous indique le nombre de bonnes réponses
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                '/',
                              ); //la route vers laquelle on est redirigé lorsqu'on clique sur le bouton
                              total = 0;
                              bon = 0;
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    //apparence du bouton
                    backgroundColor: Colors.blue,
                    side: BorderSide(color: Colors.blue, width: 2),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    minimumSize: Size(50, 50),
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

class GameEn extends StatefulWidget {
  GameEnState createState() => GameEnState();
}

class GameEnState extends State {
  //cette classe gère le jeu en anglais
  var a = false;
  var b;
  var total = 0;
  var bon = 0;
  final controller = TextEditingController();
  String reponse = "";
  static int ch = Random().nextInt(8) + 2;
  String chiffre = '$ch';
  static int ch2 = Random().nextInt(8) + 2;
  String chiffre2 = '$ch2';
  int rep = ch * ch2;
  double taille = TextEnState.t;
  Widget build(BuildContext context) {
    return ScaffoldEn(
      title: "Game",
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/fond/pastel.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 10.0),
          child: Column(children: [
            Text('Solve this calculation : ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: taille,
                )),
            SizedBox(
              height: 40,
            ),
            Text(chiffre + " X " + chiffre2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: taille,
                )),
            SizedBox(
              height: 40,
            ),
            TextField(
              controller: controller,
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your answer',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              child: Text("Submit",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: taille - 10,
                  )),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue)),
              onPressed: () {
                setState(() {
                  reponse = controller.text;
                  if (int.parse(controller.text) == rep) {
                    a = true;
                    b = "Well done, good answer!";
                    total += 1;
                    bon += 1;
                  } else {
                    a = true;
                    b = "Wrong answer.";
                    total += 1;
                  }
                });
              },
            ),
            SizedBox(
              height: 38,
            ),
            if (a)
              Text(b,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: taille,
                  )),
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.topRight,
              child: Container(
                width: 180,
                child: OutlinedButton(
                  child: Row(
                    children: [
                      Expanded(
                        child: Text("Next",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: taille,
                                color: Colors.blue,
                                fontStyle: FontStyle.italic)),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                  onPressed: () {
                    ch = new Random().nextInt(8) + 2;
                    ch2 = new Random().nextInt(8) + 2;
                    a = false;
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => super.widget));
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    side: BorderSide(color: Colors.blue, width: 2),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    minimumSize: Size(50, 50),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              alignment: Alignment.center,
              child: Container(
                width: 280,
                child: OutlinedButton(
                  child: Row(children: [
                    Expanded(
                      child: Text("Game over",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: taille,
                              color: Colors.white,
                              fontStyle: FontStyle.italic)),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.power_settings_new,
                      color: Colors.white,
                    ),
                  ]),
                  onPressed: () {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: Text('Game over !'),
                        content:
                            Text("You have $bon correct answers on $total"),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                '/homeEn',
                              );
                              total = 0;
                              bon = 0;
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    side: BorderSide(color: Colors.blue, width: 2),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    minimumSize: Size(50, 50),
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

class GameJp extends StatefulWidget {
  GameJpState createState() => GameJpState();
}

class GameJpState extends State {
  //cette classe gère le jeu en japonais
  var a = false;
  var b;
  var total = 0;
  var bon = 0;
  final controller = TextEditingController();
  String reponse = "";
  static int ch = Random().nextInt(8) + 2;
  String chiffre = '$ch';
  static int ch2 = Random().nextInt(8) + 2;
  String chiffre2 = '$ch2';
  int rep = ch * ch2;
  double taille = TextJpState.t;
  Widget build(BuildContext context) {
    return ScaffoldJp(
      title: "ゲーム",
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/fond/pastel.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 10.0),
          child: Column(children: [
            Text('この計算を解きます： ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: taille,
                )),
            SizedBox(
              height: 40,
            ),
            Text(chiffre + " X " + chiffre2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: taille,
                )),
            SizedBox(
              height: 40,
            ),
            TextField(
              controller: controller,
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'あなたの答えを入力してください',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              child: Text("参加する",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: taille - 10,
                  )),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue)),
              onPressed: () {
                setState(() {
                  reponse = controller.text;
                  if (int.parse(controller.text) == rep) {
                    a = true;
                    b = "よくやった、良い答え！";
                    total += 1;
                    bon += 1;
                  } else {
                    a = true;
                    b = "不正解です。";
                  }
                });
              },
            ),
            SizedBox(
              height: 38,
            ),
            if (a)
              Text(b,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: taille,
                  )),
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.topRight,
              child: Container(
                width: 180,
                child: OutlinedButton(
                  child: Row(
                    children: [
                      Expanded(
                        child: Text("以下",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: taille,
                                color: Colors.blue,
                                fontStyle: FontStyle.italic)),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                  onPressed: () {
                    ch = new Random().nextInt(8) + 2;
                    ch2 = new Random().nextInt(8) + 2;
                    a = false;
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => super.widget));
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    side: BorderSide(color: Colors.blue, width: 2),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    minimumSize: Size(50, 50),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              alignment: Alignment.center,
              child: Container(
                width: 280,
                child: OutlinedButton(
                  child: Row(children: [
                    Expanded(
                      child: Text("ゲームオーバー",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: taille,
                              color: Colors.white,
                              fontStyle: FontStyle.italic)),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.power_settings_new,
                      color: Colors.white,
                    ),
                  ]),
                  onPressed: () {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: Text('ゲームオーバー !'),
                        content: Text("正解は $total 点中 $bon 点です "),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                '/homeJp',
                              );
                              total = 0;
                              bon = 0;
                            },
                            child: const Text('はい'),
                          ),
                        ],
                      ),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    side: BorderSide(color: Colors.blue, width: 2),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    minimumSize: Size(50, 50),
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
