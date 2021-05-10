import 'dart:core';
import 'package:flutter/material.dart';
import 'main.dart';

class AccountFr extends StatefulWidget {
  AccountFrState createState() => AccountFrState();
}

class AccountFrState extends State {
  Widget build(BuildContext context) {
    return ScaffoldFr(
      title: "Compte",
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://i.pinimg.com/originals/7c/41/59/7c41595a1fd265e66055f4f49b4844b0.jpg"),
              fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 80.0, horizontal: 10.0),
        ),
      ),
    );
  }
}

class AccountEn extends StatefulWidget {
  AccountEnState createState() => AccountEnState();
}

class AccountEnState extends State {
  Widget build(BuildContext context) {
    return ScaffoldEn(
      title: "Account",
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://i.pinimg.com/originals/7c/41/59/7c41595a1fd265e66055f4f49b4844b0.jpg"),
              fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 80.0, horizontal: 10.0),
        ),
      ),
    );
  }
}

class AccountJp extends StatefulWidget {
  AccountJpState createState() => AccountJpState();
}

class AccountJpState extends State {
  Widget build(BuildContext context) {
    return ScaffoldJp(
      title: "プロフィール",
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://i.pinimg.com/originals/7c/41/59/7c41595a1fd265e66055f4f49b4844b0.jpg"),
              fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 80.0, horizontal: 10.0),
        ),
      ),
    );
  }
}
