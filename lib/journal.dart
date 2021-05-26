import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:syncfusion_localizations/syncfusion_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'dart:core';
import 'package:flutter/material.dart';
import 'main.dart';

class JournalFr extends StatefulWidget {
  JournalFrState createState() => JournalFrState();
}

class JournalFrState extends State {
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
      home: ScaffoldFr(
        title: "Journal",
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/fond/pastel.jpg"), fit: BoxFit.fill),
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

class JournalEn extends StatefulWidget {
  JournalEnState createState() => JournalEnState();
}

class JournalEnState extends State {
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
      locale: const Locale('en'),
      home: ScaffoldEn(
        title: "Diary",
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/fond/pastel.jpg"), fit: BoxFit.fill),
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

class JournalJp extends StatefulWidget {
  JournalJpState createState() => JournalJpState();
}

class JournalJpState extends State {
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
      locale: const Locale('ja'),
      home: ScaffoldJp(
        title: "議題",
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/fond/pastel.jpg"), fit: BoxFit.fill),
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
