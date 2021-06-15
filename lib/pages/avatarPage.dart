import 'dart:core';

import 'package:compagnon_virtuel/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AvatarPage extends StatefulWidget {
  AvatarPageState createState() => AvatarPageState();
}

class AvatarPageState extends State {
  static AssetImage image = AssetImage("assets/avatar/robot.png");
  void refresh() {
    setState(() {
      print("salut");
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        AppLocalizations.of(context)!.avatarPageHeader,
        textAlign: TextAlign.center,
      )),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              AppLocalizations.of(context)!.avatarQuestion,
              textAlign: TextAlign.center,
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
                    avatarButton("cat", refresh),
                    avatarButton("dog", refresh),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    avatarButton("ghost", refresh),
                    avatarButton("robot", refresh),
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

class avatarButton extends StatefulWidget {
  final String avatarName;
  final Function pageRefresh;
  const avatarButton(@required this.avatarName, @required this.pageRefresh);

  @override
  _avatarButtonState createState() => _avatarButtonState();
}

class _avatarButtonState extends State<avatarButton> {
  void refresh() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 150,
      width: 150,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: avatarPrefs == widget.avatarName
              ? Border.all(color: Colors.blue, width: 5)
              : Border.all(color: Colors.black, width: 3),
          borderRadius: BorderRadius.circular(15),
        ),
        child: IconButton(
          //un bouton icône représenté par l'image appelé ci-dessous
          icon: Image.asset(
            "assets/avatar/${widget.avatarName}.png",
          ),
          onPressed: () {
            print("et la on change l'avatar pour ${widget.avatarName}");
            MyApp.changeAvatar(context, widget.avatarName);
            widget.pageRefresh();
          },
        ),
      ),
    );
  }
}
