import 'dart:core';
import 'package:flutter/material.dart';
import 'main.dart';
import 'avatar.dart';

//le fichier account.dart gère la page dédiée à l'utilisateur c'est à dire l'avatar qu'il a choisi ainsi que son pseudo
class AccountFr extends StatefulWidget {
  AccountFrState createState() => AccountFrState();
}

class AccountFrState extends State {
  //cette classe gère le compte utilisateur français
  var im = AvatarFrState
      .image; //cette variable représente l'avatar que l'utilisateur a choisi (ou cleui par défaut) dans la page avatar.dart
  final controller =
      TextEditingController(); //le controlleur gère le texte entré par l'utilisateur
  static var pseudo = "Anonyme"; //le pseudo a pour valeur par défaut "Anonyme"
  Widget build(BuildContext context) {
    return ScaffoldFr(
      title: "Compte", //titre de la page
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/fond/pastel.jpg"),
              fit: BoxFit.fill), //image de fond de la page
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(
              vertical: 40.0,
              horizontal:
                  10.0), //marge des côtés pour que les éléments ne soient pas aux bords de la page
          child: Column(children: [
            Align(
              //position de l'élément "enfant" de Align donc ici Container
              alignment: Alignment.topCenter,
              child: Container(
                //le Container est une boite à laquelle on peut définir sa taille et ce qu'elle contient
                height: 120, //hauteur du container
                width: 140, //largeur du container
                decoration: BoxDecoration(
                  //définit l'arrière plan du container
                  color: Colors.white, //le fond est de couleur blanche
                  image: DecorationImage(
                    //on ajoute l'image im déclarée au début au fond de la page
                    image: im,
                    fit: BoxFit.fitWidth,
                  ),
                  borderRadius: BorderRadius.only(
                    //arrondi les coins du container
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                  ),
                  border: Border.all(
                    //définit les bordures du container, leur taille et leur couleur
                    width: 2,
                    color: Colors.black,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
                //ce widget est une zone d'entrée de texte par l'utilisateur, ici il sert à choisir son nom
                controller:
                    controller, //on définit le controlleur déclaré au début
                decoration: InputDecoration(
                  //apparence de la zone de texte
                  border: OutlineInputBorder(), //les bordures
                  hintText:
                      pseudo, //hintText peut servir à donner des indications sur ce que doit rentrer l'utilisateur, ici il affiche le pseudo actuel de l'utilisateur
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.bold), //apparence de l'hintText
                  hintMaxLines: 1, //taille maximum de l'hintText
                  suffixIcon: Icon(Icons
                      .mode_edit), //icône représentant la possibilité de modifier le pseudo actuel
                ),
                onSubmitted: (String str) {
                  setState(() {
                    pseudo =
                        str; //lorsque l'utilisateur valide ce qu'il a écrit, ça devient son nouveau pseudo
                  });
                }),
          ]),
        ),
      ),
    );
  }
}

class AccountEn extends StatefulWidget {
  AccountEnState createState() => AccountEnState();
}

class AccountEnState extends State {
  //cette classe gère le compte utilisateur anglais avec toutes les mêmes variables et méthodes que la classe AccountFr
  var im = AvatarEnState.image;
  final controller = TextEditingController();
  static var pseudo = "Anonymous";
  Widget build(BuildContext context) {
    return ScaffoldEn(
      title: "Account",
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/fond/pastel.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 10.0),
          child: Column(children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 120,
                width: 140,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: im,
                    fit: BoxFit.fitWidth,
                  ),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                  ),
                  border: Border.all(
                    width: 2,
                    color: Colors.black,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
                controller: controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: pseudo,
                  hintStyle: TextStyle(fontWeight: FontWeight.bold),
                  hintMaxLines: 1,
                  suffixIcon: Icon(Icons.mode_edit),
                ),
                onSubmitted: (String str) {
                  setState(() {
                    pseudo = str;
                  });
                }),
          ]),
        ),
      ),
    );
  }
}

class AccountJp extends StatefulWidget {
  AccountJpState createState() => AccountJpState();
}

class AccountJpState extends State {
  //cette classe gère le compte utilisateur japonais avec toutes les mêmes variables et méthodes que la classe AccountFr
  var im = AvatarJpState.image;
  final controller = TextEditingController();
  static var pseudo = "匿名";
  Widget build(BuildContext context) {
    return ScaffoldJp(
      title: "プロフィール",
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/fond/pastel.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 10.0),
          child: Column(children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 120,
                width: 140,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: im,
                    fit: BoxFit.fitWidth,
                  ),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                  ),
                  border: Border.all(
                    width: 2,
                    color: Colors.black,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
                controller: controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: pseudo,
                  hintStyle: TextStyle(fontWeight: FontWeight.bold),
                  hintMaxLines: 1,
                  suffixIcon: Icon(Icons.mode_edit),
                ),
                onSubmitted: (String str) {
                  setState(() {
                    pseudo = str;
                  });
                }),
          ]),
        ),
      ),
    );
  }
}
