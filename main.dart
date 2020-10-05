import 'package:flutter/material.dart';
import 'bmi.dart';
import 'protein.dart';
import 'Profil.dart';
import 'kebugaran.dart';
import 'latihan.dart';
import 'tidur.dart';
import 'bottombar.dart';

void main() {
    runApp(new MaterialApp(
        theme: ThemeData.dark(),
        home: new bottombar(),
        debugShowCheckedModeBanner: false,
        routes:<String, WidgetBuilder> {
          '/bot': (BuildContext context) => new bottombar(),
          '/Bmi': (BuildContext context) => new bmi(),
          '/profil': (BuildContext context) => new Profil(),
          '/prot': (BuildContext context) => new protein(),
          '/bugar': (BuildContext context) => new kebugaran(),
          '/lat': (BuildContext context) => new latihan(),
          '/tid': (BuildContext context) => new tidur(),
        },
    ));
}





