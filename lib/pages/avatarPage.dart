import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AvatarPage extends StatefulWidget {
  AvatarPageState createState() => AvatarPageState();
}

class AvatarPageState extends State {
  static AssetImage image = AssetImage("assets/avatar/robot.png");

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.avatarPageHeader)),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              AppLocalizations.of(context)!.avatarQuestion,
              style: Theme.of(context).textTheme.headline1,
            ),
            SizedBox(
              height: 120,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    avatarButton("cat"),
                    avatarButton("dog"),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    avatarButton("ghost"),
                    avatarButton("robot"),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//todo: passer en stateful pour encadrer l'avatar qu'on a choisit

class avatarButton extends StatelessWidget {
  final String avatarName;
  const avatarButton(@required this.avatarName);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 150,
      width: 150,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(15),
        ),
        child: IconButton(
          //un bouton icône représenté par l'image appelé ci-dessous
          icon: Image.asset(
            "assets/avatar/${avatarName}.png",
          ),
          onPressed: () {
            print("et la on change l'avatar pour ${avatarName}");
          },
        ),
      ),
    );
  }
}
