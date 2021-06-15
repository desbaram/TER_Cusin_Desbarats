import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class pageBlanchePage extends StatelessWidget {
  void gotoThankYou(BuildContext context) {
    Navigator.pushNamed(context, '/thankYouPage');
  }

  final int reponse;
  late String messageBegin;
  pageBlanchePage(@required this.reponse);

  @override
  Widget build(BuildContext context) {
    switch (reponse) {
      case 0:
        messageBegin = AppLocalizations.of(context)!.negativeMessageBegin;
        break;
      case 1:
        messageBegin = AppLocalizations.of(context)!.positiveMessageBegin;
        break;
      default:
        messageBegin = "";
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.pageBlancheHeader),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "$messageBegin ${AppLocalizations.of(context)!.howAreYouFeeling}",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
            ),
            TextField(
              maxLines: 5,
              style: TextStyle(fontSize: 20),
              decoration:
                  InputDecoration(border: OutlineInputBorder(), hintText: AppLocalizations.of(context)!.writeHere),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    gotoThankYou(context);
                    print("coucou");
                  },
                  child: Text(AppLocalizations.of(context)!.submitButton),
                ),
                ElevatedButton(
                  onPressed: () {
                    gotoThankYou(context);
                    print("tant pis");
                  },
                  child: Text(AppLocalizations.of(context)!.doNotWishToAnswerExpress),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
