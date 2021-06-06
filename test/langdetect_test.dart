import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("text and language", () async {
    // Localizations(delegates: [], locale: Locale('en'), child: Home());

    // var text = find.byType(Text); //find what widget
    // expect(text, findsWidgets); // give expectation
    // print(text);

    // var button1 = find.text("Répondre à la question du jour");
    final file = new File('test_resources/app_en.arb');
    final json = jsonDecode(await file.readAsString());
    final eng = json['ja'];
    final details = eng.first;
    //expect(details, findsWidgets);
    print(details);
  });
}
