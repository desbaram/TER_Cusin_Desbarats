import 'dart:core';
import 'package:flutter/material.dart';
import 'main.dart';
import 'avatar.dart';

class AccountFr extends StatefulWidget {
  AccountFrState createState() => AccountFrState();
}

class AccountFrState extends State {
  var im = AvatarFrState.image;
  Widget build(BuildContext context) {
    return ScaffoldFr(
      title: "Compte",
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/fond/pastel.jpg"), fit: BoxFit.fill),
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
            Text("Anonyme", style: TextStyle(fontSize: 25)),
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
  var im = AvatarEnState.image;
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
            Text("Anonymous", style: TextStyle(fontSize: 25)),
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
  var im = AvatarJpState.image;
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
            Text("匿名", style: TextStyle(fontSize: 25)),
          ]),
        ),
      ),
    );
  }
}
