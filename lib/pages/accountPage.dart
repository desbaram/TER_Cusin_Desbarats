import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AccountPage extends StatefulWidget {
  AccountPageState createState() => AccountPageState();
}

class AccountPageState extends State {
  //todo: mettre ça à jour selon la valeur globale
  AssetImage image = AssetImage("assets/avatar/robot.png");
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.profilePageHeader),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(children: [
          SizedBox(
            height: 15,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 120,
              width: 140,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: image,
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
          Text("Anonyme", style: TextStyle(fontSize: 25)),
        ]),
      ),
    );
    /*
    return MainScaffold(
      title: "Compte",
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/fond/pastel.jpg"), fit: BoxFit.fill),
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
                    image: image,
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
            Text("Anonyme", style: TextStyle(fontSize: 25)),
          ]),
        ),
      ),
    );

     */
  }
}
