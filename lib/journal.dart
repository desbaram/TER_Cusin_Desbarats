import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:syncfusion_localizations/syncfusion_localizations.dart';

import 'main.dart';

class JournalPage extends StatefulWidget {
  JournalPageState createState() => JournalPageState();
}

class JournalPageState extends State {
  var selected, focused;
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        SfGlobalLocalizations.delegate
      ],
      supportedLocales: [
        const Locale('fr'),
        const Locale('en'),
        const Locale('ja'),
      ],
      locale: const Locale('fr'),
      home: MainScaffold(
        title: "Journal",
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/fond/pastel.jpg"), fit: BoxFit.fill),
          ),
          child: SfCalendar(
            view: CalendarView.month,
            firstDayOfWeek: 1,
            cellBorderColor: Colors.black,
            showNavigationArrow: true,
            todayHighlightColor: Colors.blue,
            todayTextStyle: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
            monthViewSettings: MonthViewSettings(
              showAgenda: true,
              agendaViewHeight: 100,
              showTrailingAndLeadingDates: false,
              monthCellStyle: MonthCellStyle(
                textStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
