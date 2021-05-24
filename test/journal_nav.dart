import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:compagnon_virtuel/home.dart';
import 'package:compagnon_virtuel/journal.dart';
import 'package:mockito/mockito.dart';

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

void main() {
  testWidgets('navigation of journal button', (WidgetTester tester) async {
    final mockObserver = MockNavigatorObserver();
    await tester.pumpWidget(
      MaterialApp(
        home: HomeFr(),
        navigatorObservers: [mockObserver],
      ),
    );
    expect(find.byType(ElevatedButton), findsWidgets);
    var journal1 = find.text("Accéder au journal");
    await tester.pump(Duration(seconds: 2));
    await tester.tap(journal1, warnIfMissed: false);
    await tester.pumpAndSettle();

    await tester.pumpWidget(
      MaterialApp(
        home: JournalFr(),
        navigatorObservers: [mockObserver],
      ),
    );
    var text = find.byType(Text);
    expect(text, findsWidgets);
  });
}
