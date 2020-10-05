import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'Home.dart';

class kebugaran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color.fromRGBO(251, 174, 39, 1),
        actions: [
          Padding(padding: EdgeInsets.only(right: 120),
            child:   Image.asset('assets/logo.png'),
          )
        ],
      ),
      body: ListView(
        children: [
          Image.asset("assets/kebugaran.jpg", fit: BoxFit.fitWidth),
          Padding(padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            child:  Text("Kebugaran Jasmani", style: TextStyle(fontSize: 26), textAlign: TextAlign.justify,),),

          Container(
            margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5),
            child: Text('   Kebugaran jasmani adalah kemampuan fisik dari seseorang '
                'dalam melakukan adaptasi terhadap beberapa kegiatan sehari-hari '
                'tanpa merasakan rasa capek dan lelah.Kebugaran jasmani mempunyai '
                'beberapa manfaat. Berikut adalah manfaat-manfaat dari latihan kebugaran'
                ' jasmani.', style:  TextStyle(fontSize: 18), textAlign: TextAlign.justify),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                Text('1. Membentuk kekuatan dan daya tahan otot-otot tubuh', style:  TextStyle(fontSize: 18), textAlign: TextAlign.justify),
                Text('2. Membentuk keberanian, kepercayaan diri dan kesanggupan untuk bekerja sama.',style:  TextStyle(fontSize: 18), textAlign: TextAlign.justify),
                Text('3. Merangsang pertumbuhan pada tubuh, terutama anak-anak', style:  TextStyle(fontSize: 18), textAlign: TextAlign.justify),
                Text('4. Mempunyai rasa tanggung jawab dalam memelihara kebugaran dan kesehatan tubuh.', style:  TextStyle(fontSize: 18), textAlign: TextAlign.justify),
                Text('5.  Mengurangi stres dan menambah kebahagiaan .', style:  TextStyle(fontSize: 18), textAlign: TextAlign.justify),
              ],
            )
          ),
          Padding(padding: EdgeInsets.only(left: 10, top: 10, right: 10),
            child: Text('    Kebugaran jasmani seseorang dapat diuji dengan beberapa aktivitas latihan tertentu, diantaranya:', style:  TextStyle(fontSize: 18), textAlign: TextAlign.justify),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10, top: 5),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("1. Push-up untuk melatih kekuaran otot lengan",
                      style: TextStyle(color: Colors.white,
                          fontSize: 19)),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("2. Sit-up untuk melatih kekuatan otot perut ",
                      style: TextStyle(color: Colors.white,
                          fontSize: 19)),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("3. Back lift untuk melatih otot punggung ",
                      style: TextStyle(color: Colors.white,
                          fontSize: 19)),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("4. Latihan kekuatan otot lengan dan bahu",
                      style: TextStyle(color: Colors.white,
                          fontSize: 19)),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 10, top: 5,right: 10, bottom: 30),
            child: Text('Aktivitas ini merupakan contoh kebugaran jasmani yang bisa digunakan untuk menguji daya tahan tubuh serta kekuatan otot. Contoh latihan kebugaran jasmani lain yang praktis dan bisa dilakukan untuk menguji kualitas kebugaran jasmani adalah push-up, lari bolak balik serta lompat jauh tanpa awalan.', style:  TextStyle(fontSize: 18), textAlign: TextAlign.justify),
          ),
        ],
      ),
    );
  }
}
