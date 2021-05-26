import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
// import 'package:flutter/src/widgets/image.dart';

import 'package:compagnon_virtuel/main.dart';
import 'package:compagnon_virtuel/settings.dart';
import 'package:compagnon_virtuel/avatar.dart';
import 'package:compagnon_virtuel/home.dart';

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

void main() {
  testWidgets('change app language', (WidgetTester tester) async {
    final mockObserver = MockNavigatorObserver();

    await tester.pumpWidget(
      MaterialApp(
        home: DrawerFr(),
        navigatorObservers: [mockObserver],
      ),
    );
    var tile = find.byType(ListTile); //find what widget
    expect(tile, findsWidgets); // give expectation
    var button1 = find.text("Paramètres");
    await tester.pump(Duration(seconds: 2));
    await tester.tap(button1, warnIfMissed: false);
    await tester.pumpAndSettle();

    await tester.pumpWidget(
      MaterialApp(
        home: SettingsFr(),
        navigatorObservers: [mockObserver],
      ),
    );
    var text = find.byType(Text); //find what widget
    expect(text, findsWidgets); // give expectation
    var button2 = find.text("Langues");
    await tester.pump(Duration(seconds: 2));
    await tester.tap(button2, warnIfMissed: false);
    await tester.pumpAndSettle();

    await tester.pumpWidget(
      MaterialApp(
        home: ChoixFr(),
        navigatorObservers: [mockObserver],
      ),
    );
    var text1 = find.byType(Text); //find what widget
    expect(text1, findsWidgets); // give expectation
    var button3 = find.text("English");
    await tester.pump(Duration(seconds: 2));
    await tester.tap(button3, warnIfMissed: false);
    await tester.pumpAndSettle();

    await tester.pumpWidget(
      MaterialApp(
        home: SettingsEn(),
        navigatorObservers: [mockObserver],
      ),
    );
    var text2 = find.byType(Text); //find what widget
    expect(text2, findsWidgets); // give expectation
    var button4 = find.text("Avatar");
    await tester.pump(Duration(seconds: 2));
    await tester.tap(button4, warnIfMissed: false);
    await tester.pumpAndSettle();

    await tester.pumpWidget(
      MaterialApp(
        home: AvatarEn(),
        navigatorObservers: [mockObserver],
      ),
    );
    var icons = find.byType(IconButton); //find what widget
    expect(icons, findsWidgets); // give expectation
    // var button5 = find.byType(Icons);
    await tester.tap(icons.first, warnIfMissed: false);
    await tester.pump(Duration(seconds: 2));
    await tester.pumpAndSettle();

    await tester.pumpWidget(
      MaterialApp(
        home: HomeEn(),
        navigatorObservers: [mockObserver],
      ),
    );
  });
}
