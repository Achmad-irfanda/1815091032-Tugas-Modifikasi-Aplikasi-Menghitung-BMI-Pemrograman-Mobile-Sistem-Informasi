import 'package:flutter/material.dart';
import 'main.dart';
import 'Home.dart';
import 'bmi.dart';
import 'Profil.dart';


class bottombar extends StatefulWidget {
  @override
  _bottombarState createState() => _bottombarState();
}

class _bottombarState extends State<bottombar> {
  int _currentIndex = 0;

  final tabs = [
    new Home(),
    new bmi(),
    new Profil(),
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(251, 174, 39, 1),
        actions: [
          Padding(padding: EdgeInsets.only(right: 120),
            child:   Image.asset('assets/logo.png'),
          )
        ],
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Color.fromRGBO(251, 174, 39, 1),
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 18,
        iconSize: 30,
        unselectedItemColor: Colors.blueGrey[900],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.table_chart),
            title: Text('Calculator BMI',style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('About ',style: TextStyle(fontWeight: FontWeight.bold)),
          ),
        ],
        onTap: (index) {
          setState((){
            _currentIndex=index;
          });
        },
        selectedItemColor: Colors.black,
      ),
    );
  }
}
