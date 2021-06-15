import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class thankYouPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.thankYouPageHeader),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              AppLocalizations.of(context)!.thankYouMessage,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 80,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.home),
                  Text(
                    AppLocalizations.of(context)!.homeButton,
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
