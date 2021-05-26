import 'package:compagnon_virtuel/question.dart';
import 'package:compagnon_virtuel/answerFr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:compagnon_virtuel/home.dart';
import 'package:mockito/mockito.dart';
import 'dart:math';

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

String getRandomElement<String>(List<String> list) {
  final random = new Random();
  var i = random.nextInt(list.length);
  return list[i];
}

var list = [
  "better than yesterday",
  "i will take a walk today with my nurse",
  "am feeling great but will be visiting my doctor tomorrow",
  "fit as a fiddle",
  "healthy and good",
  "feeling to take a stroll and go shopping",
];

void main() {
  testWidgets('navigation of question button', (WidgetTester tester) async {
    final mockObserver = MockNavigatorObserver();
    await tester.pumpWidget(
      MaterialApp(
        home: HomeFr(),
        navigatorObservers: [mockObserver],
      ),
    );
    var button1 = find.text("Répondre à la question du jour");
    await tester.pump(Duration(seconds: 2));
    await tester.tap(button1, warnIfMissed: false);
    await tester.pumpAndSettle();

    await tester.pumpWidget(
      MaterialApp(
        home: QuestionFr(),
        navigatorObservers: [mockObserver],
      ),
    );
    expect(find.byType(ElevatedButton), findsWidgets);
    await tester.pump(Duration(seconds: 2));
    await tester.tap(find.text("Je ne souhaite pas répondre"),
        warnIfMissed: false);
    await tester.pumpAndSettle();

    await tester.pumpWidget(
      MaterialApp(
        home: NoAnswerFr(),
        navigatorObservers: [mockObserver],
      ),
    );
    expect(find.byType(TextFormField), findsOneWidget);
    // await tester.pumpAndSettle();
    var element = getRandomElement(list);
    print(element);
    await tester.enterText(find.byType(TextFormField), element);
    expect(find.text(element), findsOneWidget);
    var send = find.text("Envoyer");
    await tester.pump(Duration(seconds: 2));
    await tester.tap(send, warnIfMissed: false);
    await tester.pumpAndSettle();
  });
}
