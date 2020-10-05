import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  new SingleChildScrollView(
            child :Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              child: new Column(
                children :<Widget>[
                  new Container(
                    child: Column(
                      children: <Widget>[
                        Text("Profil Developer", style: TextStyle(fontSize: 30,
                            fontWeight: FontWeight.w900),),
                        new Padding(
                          padding: new EdgeInsets.only(
                            top: 10,
                          ),
                          child:new Container(
                            child: Column(
                                children: <Widget>[
                                  new CircleAvatar(
                                    radius: 100,
                                    backgroundColor: Color.fromRGBO(251, 174, 39, 1),
                                    child: CircleAvatar(
                                      radius: 97,
                                      backgroundImage: AssetImage('assets/profil.png'),
                                    ),
                                  ),
                                  new Container(
                                      margin: EdgeInsets.only(top: 20, left: 8, right: 8),
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            padding: EdgeInsets.only(left: 7,right:7,top:10),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text("Nama   : Achmad Irfanda",
                                                  style: TextStyle(color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.w900)),
                                            ),
                                          ),

                                          Container(
                                            padding: EdgeInsets.only(left: 7,right:7,top:10),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text("Status  : Pelajar/Mahasiswa",
                                                  style: TextStyle(color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.w900)),
                                            ),
                                          ),

                                          Container(
                                            padding: EdgeInsets.only(left: 7,right:7,top:10),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text("NIM      : 1815091032",
                                                  style: TextStyle(color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.w900)),
                                            ),
                                          ),

                                          Container(
                                            padding: EdgeInsets.only(left: 7,right:7,top:10),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text("Prodi    : Sistem Informasi",
                                                  style: TextStyle(color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.w900)),
                                            ),
                                          ),

                                          Container(
                                            padding: EdgeInsets.only(left: 7,right:7,top:10),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text("TTL       : Jember,30 Oktober 1999",
                                                  style: TextStyle(color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.w900)),
                                            ),
                                          ),



                                          Container(
                                            padding: EdgeInsets.only(left: 7,right:7,top:10),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text("Alamat : Dukuhdempok-Wuluhan",
                                                  style: TextStyle(color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.w900)),
                                            ),
                                          ),

                                          Container(
                                            padding: EdgeInsets.only(left: 7,right:7,top:10),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text("Hobby  : Membaca",
                                                  style: TextStyle(color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.w900)),
                                            ),
                                          ),

                                          Container(
                                            padding: EdgeInsets.only(left: 7,right:7,top:10),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text("Genre   : Nasyid, Manga",
                                                  style: TextStyle(color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.w900)),
                                            ),
                                          ),

                                          Container(
                                            padding: EdgeInsets.only(left: 7,right:7,top:10, bottom: 10),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text("Motto   : 'Man Jadda WaJada'",
                                                  style: TextStyle(color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.w900)),
                                            ),
                                          ),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color.fromRGBO(251, 174, 39, 1),
                                      width: 3,
                                    ),
                                    borderRadius: BorderRadius.all( Radius.elliptical(20, 20)),
                                  ) ,
                                ),
                              ]
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromRGBO(251, 174, 39, 1),
                  width: 3,
                ),
                borderRadius: BorderRadius.all( Radius.elliptical(20, 20)),
              ) ,
            ),
          );
  }
}
