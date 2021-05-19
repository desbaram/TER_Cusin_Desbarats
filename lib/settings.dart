import 'dart:core';

import 'package:flutter/material.dart';

import 'main.dart';

class SettingsPage extends StatefulWidget {
  SettingsPageState createState() => SettingsPageState();
}

class SettingsPageState extends State {
  Widget build(BuildContext context) {
    return MainScaffold(
      title: "Paramètres",
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/fond/pastel.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 80.0, horizontal: 10.0),
          child: Column(children: [
            OutlinedButton(
              child: Row(
                children: [
                  Expanded(
                    child: Text("Langues",
                        style: TextStyle(fontSize: 30, color: Colors.black, fontStyle: FontStyle.italic)),
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
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
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
                        style: TextStyle(fontSize: 30, color: Colors.black, fontStyle: FontStyle.italic)),
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
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                minimumSize: Size(180, 55),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
