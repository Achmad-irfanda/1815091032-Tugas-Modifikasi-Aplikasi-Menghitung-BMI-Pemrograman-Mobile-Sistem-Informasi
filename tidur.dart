import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'Home.dart';

class tidur extends StatelessWidget {
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
          Image.asset("assets/tidur.jpg", fit: BoxFit.fitHeight),
          Padding(padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            child:  Text("Siklus Tidur Manusia", style: TextStyle(fontSize: 26), textAlign: TextAlign.justify,),),

          Container(
            margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 30),
            child: Text('   Tidur adalah suatu periode istirahat bagi tubuh berdasarkan atas kemauan serta kesadaran dan secara utuh atau sebagian fungsi tubuh yang akan dihambat atau dikurangi. Tidur juga digambarkan sebagai suatu tingkah laku yang ditandai dengan karakteristi  pengurangan gerakan tetapi bErsifat reversible terhadap rangsangan dari luar. Tidur dibagi menjadi dua tahap secara garis besarnya yaitu :', style:  TextStyle(fontSize: 18), textAlign: TextAlign.justify),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("1. Fase rapid eye movement (REM) disebut juga active sleep.",
                      style: TextStyle(color: Colors.white,
                          fontSize: 19)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text("    Tidur REM mimpi yang penuh warna dan tampak hidup dapat terjadi pada REM. Mimpi yang kurang hidup dapat terjadi pada tahap yang lain. Tahap ini biasanya dimulai sekitar 90 menit setelah mulai tidur. Hal ini dicirikan dengan respons otonom dan pergerakan mata yang cepat, fluktuasi jantung dan kecepatan respirasi dan peningkatan atau fluktuasi tekanan darah, terjadi penurunan tonus otot skelet dan peningkatan sekresi lambung. Sangat sulit sekali membangunkan orang yang tidur karena berada pada fase tertinggi keadaan tidur. Durasi dari tidur REM meningkat pada tiap siklus dan rata rata 20 menit.", style: TextStyle(fontSize: 18), textAlign: TextAlign.justify,),
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("2. Fase nonrapid eye movement (NREM) disebut juga quiet sleep.",
                      style: TextStyle(color: Colors.white,
                          fontSize: 19)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 30),
                  child: Text("    Merupakan keadaan aktif yang terjadi melalui osilasi antara talamus dan korteks. Tiga sistem utama osilasi adalah kumparan tidur, delta osilasi, dan osilasi kortikal lambat. Kumparan tidur merupakan sebuah ciri tahap tidur NREM yang dihasilkan dari hiperpolarisasi neuron GABAnergic dalam nucleus retikulotalamus.", style: TextStyle(fontSize: 18), textAlign: TextAlign.justify,),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
