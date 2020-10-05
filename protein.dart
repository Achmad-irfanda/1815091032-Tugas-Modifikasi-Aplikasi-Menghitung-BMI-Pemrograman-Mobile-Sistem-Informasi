import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'Home.dart';

class protein extends StatelessWidget {
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
          Image.asset("assets/protein.jpg", fit: BoxFit.fitHeight),
          Padding(padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
           child:  Text("Protein", style: TextStyle(fontSize: 26), textAlign: TextAlign.justify,),),

          Container(
            margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 30),
              child: Text('   Protein merupakan sumber gizi penting yang membangun organ, '
                  'otot, kulit, dan hormon. Tubuh manusia membutuhkan protein untuk '
                  'menjaga dan memperbaiki jaringan. '
                  'Sementara, anak-anak membutuhkannya untuk proses pertumbuhan.'
                  ' Penelitian menunjukkan jika mengonsumsi protein mampu menurunkan berat badan dan lemak perut sekaligus '
                  'meningkatkan massa dan kekuatan otot. Diet tinggi protein '
                  'juga mampu menurunkan tekanan darah, melawan diabetes, dan lainnya. '
                  'Kebutuhan protein harian (RDI) untuk wanita 46 gram sedangkan pria 56 gram. Meski demikian, '
                  'banyak ahli kesehatan dan kebugaran menyatakan Anda mungkin membutuhkan '
                  'protein lebih itu.'
                  'Inilah 20 makanan lezat dengan kandungan protein tinggi : Telur,'
                  'Almond, Dada Ayam, Oat, Keju, Yogurt, Susu, Brokoli, Daging Sapi, Tuna, Quinoa, Lentil, Biji Lanu, Dada Kalkun, Ikan, Udang, Kubis Brussel, Kacang, Roti Ezekiel, Suplemen Protein Whey.', style:  TextStyle(fontSize: 18), textAlign: TextAlign.justify),
            ),
],
      ),
    );
  }
}
