import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:compagnon_virtuel/home.dart';
import 'package:compagnon_virtuel/pages/homepage.dart';

import 'package:compagnon_virtuel/main.dart';

import '../lib/main.dart';

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

void main() {
  testWidgets('time testing', (WidgetTester tester) async {
    int heure = DateTime.now().hour; //heure actuelle
    final mockObserver = MockNavigatorObserver();
    if (heure > 11) {
      const key1 = Key('e1');
      await tester.pumpWidget(
        MaterialApp(
          key: key1,
          home: Home(),
          navigatorObservers: [mockObserver],
        ),
      );
      expect(find.byKey(key1), findsOneWidget);
      print("question button found");
    } else {
      print("not time for questioning");
    }
  });
}
