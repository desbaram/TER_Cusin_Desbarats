import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:syncfusion_localizations/syncfusion_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import 'main.dart';

class oldJournalPage extends StatefulWidget {
  oldJournalPageState createState() => oldJournalPageState();
}

class oldJournalPageState extends State {
  var selected, focused;
  Widget build(BuildContext context) {
    return MainScaffold(
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
    );
  }
}
