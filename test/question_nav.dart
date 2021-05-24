import 'package:compagnon_virtuel/question.dart';
import 'package:compagnon_virtuel/answerFr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:compagnon_virtuel/home.dart';
import 'package:mockito/mockito.dart';

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

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
    await tester.pumpAndSettle();
  });
}
