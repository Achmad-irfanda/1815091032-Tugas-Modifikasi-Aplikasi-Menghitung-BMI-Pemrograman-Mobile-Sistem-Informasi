import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:ui';
import 'dart:math';
import 'main.dart';
import 'bottombar.dart';

class bmi extends StatefulWidget {
  @override
  _bmiState createState() => _bmiState();
}


class _bmiState extends State<bmi> with SingleTickerProviderStateMixin {

  //kumpulan Tipe data
  int tinggi = 0;
  int berat = 0;
  String nama;
  String _JenisKelamin;
  var selectedYear;
  double age = 0 ;
  DateTime selectedDate = DateTime.now();
  //end Kumpulan tipe data

  //method jenis kelamin
  void _pilihJenisKelamin(String value) {
    setState(() {
      _JenisKelamin = value;
    });
  }
  //method jenis kelamin

  //text editing controller
  TextEditingController controllerNama = new TextEditingController();
  TextEditingController controllertinggi = new TextEditingController();
  TextEditingController controllerberat = new TextEditingController();
  //end text editing controller

  //method date picker dan perhitungan BMI
  void _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        firstDate: new DateTime(1900),
        initialDate: new DateTime(2020),
        lastDate: DateTime.now()
    ).then((DateTime dt) {
      selectedYear = dt.year;
      calculateAge();
    });

    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  void calculateAge() {
    setState(() {
      age = (2020 - selectedYear).toDouble();
    });
  }

  //end method.

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.all(10),
              child: Image.asset("assets/images.jpg", fit: BoxFit.fitWidth)),
          //form
          Container(
            margin: EdgeInsets.only(left: 10, right: 10, top: 10),
            child:  TextField(
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  controller: controllerNama,
                  decoration: new InputDecoration(
                      hintText: "Nama Lengkap",
                      border: new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromRGBO(100, 255, 218, 1),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.all(Radius.elliptical(20.0, 20.0),
                    ),
                  ),
          ),

          new Container(
            margin: EdgeInsets.only(left: 10, right: 10,top: 10),
            child: Column(
              children: [
                new RadioListTile(
                    value: "Laki-Laki",
                    title: Text("Laki-Laki"),
                    groupValue: _JenisKelamin,
                    onChanged: (String value) {
                      _pilihJenisKelamin(value);
                    }
                ),
                new RadioListTile(
                    value: "Perempuan",
                    title: Text("Perempuan"),
                    groupValue: _JenisKelamin,
                    onChanged: (String value) {
                      _pilihJenisKelamin(value);
                    }
                ),
              ],
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromRGBO(100, 255, 218, 1),
                width: 2,
              ),
              borderRadius: BorderRadius.all(Radius.elliptical(24.0, 24.0),
              ),
            ),
          ),

          new Container(
            margin: EdgeInsets.only(left: 10, right: 11, top: 10),
            padding: EdgeInsets.all(6),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 20, right: 210),
                  child: Text(
                    "${selectedYear}".split(' ')[0],
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),),

                RaisedButton(
                  onPressed: () => _selectDate(context), // Refer step 3
                  child: Text(
                    'Select date',
                    style:
                    TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w700),
                  ),
                  color: Color.fromRGBO(100, 255, 218, 1),
                ),
              ],
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromRGBO(100, 255, 218, 1),
                width: 2,
              ),
              borderRadius: BorderRadius.all(Radius.elliptical(20.0, 20.0),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 10, right: 10, top: 10),
            child:  TextField(
              controller: controllertinggi,
              onChanged: (txt) {
                setState(() {
                  tinggi = int.parse(txt);
                });
              },
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  suffix: Text('cm'),
                  hintText: "Tinggi",
                  border: new OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                  )
              ),
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromRGBO(100, 255, 218, 1),
                width: 2,
              ),
              borderRadius: BorderRadius.all(Radius.elliptical(20.0, 20.0),
              ),
            ),
          ),

          new Container(
            margin: EdgeInsets.only(left: 10, right: 10, top: 10),
            child: TextField(
              controller: controllerberat,
              onChanged: (txt) {
                setState(() {
                  berat = int.parse(txt);
                });
              },
              keyboardType: TextInputType.number,
              style: TextStyle(
                fontSize: 18,
              ),
              decoration: new InputDecoration(
                  suffix: Text('kg'),
                  hintText: 'Berat Badan',
                  border: new OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                  )
              ),
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromRGBO(100, 255, 218, 1),
                width: 2,
              ),
              borderRadius: BorderRadius.all(Radius.elliptical(20.0, 20.0),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 210, right: 20, top: 20, bottom: 20),
            child: RaisedButton(
              onPressed: () {
                kirimdata();
              },
              padding: EdgeInsets.only(top: 10, bottom: 10),
              color: Color.fromRGBO(100, 255, 218, 1),
              textColor: Colors.black,
              child: Text(
                'HITUNG BMI',
                style:
                TextStyle(fontSize: 26, fontWeight: FontWeight.w900),
              ),
            ),
          ),
        ],
      ),
    );
  }

  //method show hasil hitung (kirim data)
  void kirimdata() {
    double bmi = berat / pow(tinggi / 100, 2);
    String cBMI;
    if (bmi >= 28)
      cBMI = "Obese";
    else if (bmi >= 23)
      cBMI = "Overweight";
    else if (bmi >= 17.5)
      cBMI = "Normal";
    else
      cBMI = "Underweight";

    AlertDialog alertDialog = new AlertDialog(
      content: new Container(
        height: 500,
        width: 400,
        alignment: Alignment.centerRight,
        color: Colors.black,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Column(
                  children: <Widget>[
                    new CircleAvatar(
                      radius:38,
                      backgroundColor:Color.fromRGBO(100, 255, 218, 1),
                      child: CircleAvatar(
                        radius: 35,
                        child: Icon(Icons.person, size: 30,),
                      ),
                    ),
                  ]
              ),
            ),

            Padding(padding: EdgeInsets.all(10),
              child: Text("Hasil Hitung BMI", style: TextStyle(
                  color: Colors.white,
                  fontSize: 25, fontWeight: FontWeight.bold)),),
            Container(
              padding: EdgeInsets.only(left: 7, right:7),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Nama Lengkap : ${controllerNama.text}",
                    style: TextStyle(color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w900)),
              ),
            ),

            Container(
              padding: EdgeInsets.only(left: 7,right:7,top:10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Jenis kelamin : ${_JenisKelamin}",
                    style: TextStyle(color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w900)),
              ),
            ),

            Container(
              padding: EdgeInsets.only(left: 7,right:7,top:10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Umur : ${age} Tahun", style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w900)),
              ),
            ),

            Container(
              padding: EdgeInsets.only(left: 7,right:7,top:10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Tinggi Badan : ${controllertinggi.text}",
                    style: TextStyle(color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w900)),
              ),
            ),

            Container(
              padding: EdgeInsets.only(left: 7,right:7,top:10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Berat Badan : ${controllerberat.text}",
                    style: TextStyle(color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w900)),
              ),
            ),

            Container(
              padding: EdgeInsets.only(left: 7,right:7,top:10),
              child: Row(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Status BMI: ",
                        style: TextStyle(color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w900)),
                  ),
                  Text(
                    cBMI,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Color.fromRGBO(251, 174, 39, 1),
                    ),
                  ),
                ],
              ),
            ),


            Container(
              padding: EdgeInsets.only(left: 7,right:7,top:10),
              child: Row(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Hasil Kalkulasi: ",
                        style: TextStyle(color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w900)),
                  ),
                  Text(
                    bmi.toStringAsFixed(2),
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Color.fromRGBO(251, 174, 39, 1),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.only(left: 7,right:7, top:10),
              child: Row(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Normal BMI Range: ",
                        style: TextStyle(color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w900)),
                  ),
                  Text(
                    '17,5 -  22.9 ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Color.fromRGBO(251, 174, 39, 1),
                    ),
                  ),
                ],
              ),
            ),

            new Container(
              margin: EdgeInsets.only(right: 10, left: 40, top: 15),
              child: Row(
                children: <Widget>[
                  new Container(
                    child: RaisedButton(
                      child: Text('Edit Data', style: TextStyle(color: Colors.black,
                          fontSize: 20),),
                      onPressed: ()=> Navigator.pop(context),
                      color: Color.fromRGBO(100, 255, 218, 1),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: RaisedButton(
                      child: Text('Ok', style: TextStyle(color: Colors.black,
                          fontSize: 20),),
                      onPressed: (){Navigator.pushNamed(context, '/bot');
                      },
                      color: Color.fromRGBO(100, 255, 218, 1),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    showDialog(context: context, child: alertDialog);
  }
//end method
}

