import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

void main() => runApp(MyApp());

final date = formatDate(DateTime.now(), [dd, '-', mm, '-', yyyy]);

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State {
  int heure;
  bool bouton;
  bool bouton2;

  void initState() {
    bouton = false;
    bouton2 = false;
    heure = DateTime.now().hour;

    super.initState();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mon compagnon virtuel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.blue[300],
          title: Text(
            date,
            textAlign: TextAlign.center,
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://i.pinimg.com/originals/7c/41/59/7c41595a1fd265e66055f4f49b4844b0.jpg"),
                fit: BoxFit.cover),
          ),
          child: Column(children: [
            SizedBox(
              height: 80,
            ),
            Text(
              'Bonjour !',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 40.0,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(
              height: 140,
            ),
            if (heure > 11)
              Text(
                "Comment allez-vous aujourd'hui ?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30.0,
                ),
              ),
            SizedBox(
              height: 80,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              if (heure > 11)
                RaisedButton(
                  color: bouton ? Colors.blue[700] : Colors.blue,
                  onPressed: () {
                    setState(() {
                      bouton ? bouton = false : bouton = true;
                    });
                  },
                  child: Text('Bien',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      )),
                  padding: const EdgeInsets.all(10.0),
                ),
              SizedBox(
                height: 20,
                width: 40,
              ),
              if (heure > 11)
                RaisedButton(
                  color: bouton2 ? Colors.blue[700] : Colors.blue,
                  onPressed: () {
                    setState(() {
                      bouton2 ? bouton2 = false : bouton2 = true;
                    });
                  },
                  child: Text('Pas très bien',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      )),
                  padding: const EdgeInsets.all(10.0),
                ),
            ]),
          ]),
        ),
      ),
    );
  }
}
