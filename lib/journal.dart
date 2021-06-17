import 'package:compagnon_virtuel/answer.dart';
import 'package:compagnon_virtuel/question.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:syncfusion_localizations/syncfusion_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'dart:core';
import 'package:flutter/material.dart';
import 'main.dart';
import 'settings.dart';

//ce fichier gère le calendrier et les informations qu'il contient donc le journal utilisateur

class JournalFr extends StatefulWidget {
  JournalFrState createState() => JournalFrState();
}

class JournalFrState extends State {
  //cette classe gère le calendrier en français
  static var date;
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
      locale: const Locale('fr'), //on définit la langue du calendrier
      home: ScaffoldFr(
        title: "Journal",
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/fond/pastel.jpg"), fit: BoxFit.fill),
          ),
          child: SfCalendar(
            //ce widget est un calendrier
            view: CalendarView
                .month, //on definit son format, ici une vue par mois
            firstDayOfWeek: 1,
            cellBorderColor: Colors.black,
            showNavigationArrow: true,
            todayHighlightColor: Colors.blue,
            todayTextStyle: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
            monthViewSettings: MonthViewSettings(
              showTrailingAndLeadingDates: false,
              monthCellStyle: MonthCellStyle(
                textStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            onTap: (CalendarTapDetails details) {
              date = details.date;
              if (date.isBefore(DateTime.now())) {
                Navigator.pushNamed(
                  context,
                  '/resumeFr',
                ); //la route vers laquelle on est redirigé lorsqu'on clique sur une date
              }
            },
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
  //cette classe gère le calendrier en anglais
  static var date;
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
            onTap: (CalendarTapDetails details) {
              date = details.date;
              if (date.isBefore(DateTime.now())) {
                Navigator.pushNamed(
                  context,
                  '/resumeEn',
                );
              }
            },
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
  //cette classe gère le calendrier en japonais
  static var date;
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
            onTap: (CalendarTapDetails details) {
              date = details.date;
              if (date.isBefore(DateTime.now())) {
                Navigator.pushNamed(
                  context,
                  '/resumeJp',
                );
              }
            },
          ),
        ),
      ),
    );
  }
}

class ResumeFr extends StatefulWidget {
  ResumeFrState createState() => ResumeFrState();
}

class ResumeFrState extends State {
  //classe de la page d'accueil en français
  var message = AnswerFrState.contentFr;
  var d = JournalFrState.date;
  var qu = QuestionFrState.question;
  var rep = QuestionFrState.reponse;
  int i = (DateTime.now().weekday) - 1;
  double taille = TextFrState.t;
  //cette variable est utilisé pour définir la taille de la police et elle est défini dans la classe TextFrState du fichier settings.dart
  Widget build(BuildContext context) {
    return ScaffoldFr(
      title: d, //nom inscrit sur l'appBar
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/fond/pastel.jpg"),
              fit: BoxFit.cover), //image de fond de la page
        ),
        child: Container(
          margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 40.0),
          //marge pour que les éléments ne soient pas collés au bord de page
          child: Column(children: [
            Text("La question : " + qu[i],
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: taille,
                )), //la question posée à la date d
            SizedBox(
              height: 80,
            ),
            Text("Votre réponse " + rep,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: taille,
                )), //la réponse de l'utilisateur
            SizedBox(
              height: 80,
            ),
            Text(message,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: taille,
                )), //le message qu'a écrit l'utilisateur s'il y en a un
          ]),
        ),
      ),
    );
  }
}

class ResumeEn extends StatefulWidget {
  ResumeEnState createState() => ResumeEnState();
}

class ResumeEnState extends State {
  //classe du journal en japonais
  var message = AnswerEnState.contentEn;
  var d = JournalEnState.date;
  var qu = QuestionEnState.question;
  var rep = QuestionEnState.reponse;
  int i = (DateTime.now().weekday) - 1;
  double taille = TextEnState.t;
  Widget build(BuildContext context) {
    return ScaffoldEn(
      title: "Diary",
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/fond/pastel.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 40.0),
          child: Column(children: [
            Text("The question : " + qu[i],
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: taille,
                )),
            SizedBox(
              height: 80,
            ),
            Text("Your answer " + rep,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: taille,
                )),
            SizedBox(
              height: 80,
            ),
            Text(message,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: taille,
                )),
          ]),
        ),
      ),
    );
  }
}

class ResumeJp extends StatefulWidget {
  ResumeJpState createState() => ResumeJpState();
}

class ResumeJpState extends State {
  //classe du journal en japonais
  double taille = TextFrState.t;
  var message = AnswerJpState.contentJp;
  var d = JournalJpState.date;
  var qu = QuestionJpState.question;
  var rep = QuestionJpState.reponse;
  int i = (DateTime.now().weekday) - 1;
  Widget build(BuildContext context) {
    return ScaffoldJp(
      title: "日記",
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/fond/pastel.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 40.0),
          child: Column(children: [
            Text("質問 : " + qu[i],
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: taille,
                )),
            SizedBox(
              height: 80,
            ),
            Text("あなたの答え " + rep,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: taille,
                )),
            SizedBox(
              height: 80,
            ),
            Text(message,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: taille,
                )),
          ]),
        ),
      ),
    );
  }
}
