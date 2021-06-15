import 'dart:core';

import 'package:compagnon_virtuel/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class textSizePage extends StatefulWidget {
  @override
  _textSizePageState createState() => _textSizePageState();
}

class _textSizePageState extends State<textSizePage> {
  double textSize = textSizePrefs;

  void resetTextSize() {
    setState(() {
      textSize = 1;
    });
    applyChanges();
  }

  void applyChanges() {
    MyApp.changeTextSize(context, textSize);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.textSizePageHeader,
          textAlign: TextAlign.center,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              AppLocalizations.of(context)!.adjustTextSizeMessage,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Slider(
              value: textSize,
              min: 0.5,
              max: 2,
              divisions: 15,
              label: '${textSize.toStringAsFixed(2)}x',
              onChanged: (value) => setState(() => textSize = value),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: applyChanges, child: Text(AppLocalizations.of(context)!.applyButton)),
                SizedBox(
                  width: 75,
                ),
                ElevatedButton(
                    onPressed: resetTextSize,
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueGrey[500],
                    ),
                    child: Text(AppLocalizations.of(context)!.resetButton)),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              AppLocalizations.of(context)!.bigTextExample,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: titleSize * textSize),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              AppLocalizations.of(context)!.smallTextExample,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: normalSize * textSize),
            ),
          ],
        ),
      ),
    );
  }
}
