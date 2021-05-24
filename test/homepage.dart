import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:compagnon_virtuel/main.dart';
import 'package:compagnon_virtuel/home.dart';

void main() {
  testWidgets("Different widgets available", (WidgetTester tester) async {
    await tester.pumpWidget(HomeEn()); //which widget to test
    var text = find.byType(Text); //find what widget
    expect(text, findsWidgets); // give expectation
    print(text);

    var button1 = find.text("Répondre à la question du jour");
    // var button2 = find.text("Accéder au journal");

    expect(button1, findsOneWidget);
    await tester.tap(button1, warnIfMissed: false);
    await tester.pump();
    expect(find.byType(Widget), findsOneWidget);

    // expect(button2, findsOneWidget);
    // await tester.tap(button2, warnIfMissed: false);
    // await tester.pump();
    // expect(find.text("bad"), findsOneWidget);
    // expect(find.byWidget(NoAnswerFr());

    // var button1 = find.text("Pas très bien");
    // expect(button1, findsOneWidget);
    // await tester.tap(button1);
    // await tester.pump();
    // expect(find.text("bad"), findsOneWidget);

    await tester.pumpWidget(DrawerFr());
    var icon = find.byType(Text);
    expect(icon, findsWidgets); // give expectation
    print(icon);
  });
}
