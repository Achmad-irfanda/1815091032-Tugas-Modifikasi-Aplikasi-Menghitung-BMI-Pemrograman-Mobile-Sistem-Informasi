import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bmi.dart';
import 'main.dart';
import 'protein.dart';
import 'kebugaran.dart';
import 'latihan.dart';
import 'Profil.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new SingleChildScrollView(
      child :new Column(
        children :<Widget>[
          Padding(padding: EdgeInsets.all(10),
            child: Image.asset("assets/tajuk.jpg", fit: BoxFit.fitWidth)),
          new fitur1dan2(),
          new fitur3dan4(),
        ],
      ),
    );
  }
}

class fitur1dan2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget> [
        new Expanded(
          child: new Container (
            margin: EdgeInsets.only(left: 28, top:50, right: 30, bottom: 10),
            child: new Column(
              children: <Widget> [
                IconButton(
                  padding: EdgeInsets.only(left: 20, right: 20, top:8, bottom: 8),
                  icon: new Icon(Icons.accessibility, color: Color.fromRGBO(251, 174, 39, 1)),
                  iconSize: 80, onPressed: () {
                    Navigator.pushNamed(context, '/bugar');
                },
                ),
                Padding(padding: EdgeInsets.only(bottom: 10),
                    child:Text('Kebugaran', style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                    )),
              ],
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
              borderRadius: BorderRadius.all(Radius.elliptical(33.0, 33.0),
              ),
            ) ,
          ),
        ),

        new Expanded(
          child: new Container (
            margin: EdgeInsets.only(left: 30, top:50, right: 30, bottom: 10),
            child: new Column(
              children: <Widget> [
                IconButton(
                  padding: EdgeInsets.only(left: 20, right: 20, top:8, bottom: 8),
                  icon: new Icon(Icons.fitness_center, color:Color.fromRGBO(251, 174, 39, 1)),
                  iconSize: 80, onPressed: (){
                  Navigator.pushNamed(context, '/lat');
                },
                ),
                Padding(padding: EdgeInsets.only(bottom: 10),
                    child:Text('Latihan Harian', style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                    ))
              ],
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
              borderRadius: BorderRadius.all(Radius.elliptical(33.0, 33.0),
              ),
            ) ,
          ),
        ),
      ],
    );
  }
}


class fitur3dan4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: <Widget> [
        new Expanded(
          child: new Container (
            margin: EdgeInsets.only(left: 28, top:10, right: 30, bottom: 10),
            child: new Column(
              children: <Widget> [
                IconButton(
                  padding: EdgeInsets.only(left: 20, right: 20, top:8, bottom: 8),
                  icon: new Icon(Icons.fastfood, color: Color.fromRGBO(251, 174, 39, 1)),
                  iconSize: 80, onPressed: (){
                    Navigator.pushNamed(context, '/prot');
                },
                ),
                Padding(padding: EdgeInsets.only(bottom: 10),
                    child:Text('Protein Tinggi', style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                    ))
              ],
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
              borderRadius: BorderRadius.all(Radius.elliptical(33.0, 33.0),
              ),
            ) ,
          ),
        ),

        new Expanded(
          child: new Container (
            margin: EdgeInsets.only(left: 28, top:10, right: 30, bottom: 10),
            child: new Column(
              children: <Widget> [
                IconButton(
                  padding: EdgeInsets.only(left: 20, right: 20, top:8, bottom: 8),
                  icon: new Icon(Icons.hotel, color: Color.fromRGBO(251, 174, 39, 1)),
                  iconSize: 80, onPressed: (){
                    Navigator.pushNamed(context, '/tid');
                },
                ),
                Padding(padding: EdgeInsets.only(bottom: 10),
                    child:Text('Siklus Tidur', style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                    ))
              ],
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
              borderRadius: BorderRadius.all(Radius.elliptical(33.0, 33.0),
              ),
            ) ,
          ),
        ),
      ],
    );
  }
}


