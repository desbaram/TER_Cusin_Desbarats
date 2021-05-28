import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class JournalPage extends StatefulWidget {
  JournalPageState createState() => JournalPageState();
}

class JournalPageState extends State {
  var selected, focused;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.logPageHeader),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
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
