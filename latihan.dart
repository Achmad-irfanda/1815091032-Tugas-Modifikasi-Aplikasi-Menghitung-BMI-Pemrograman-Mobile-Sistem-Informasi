import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'Home.dart';

class latihan extends StatelessWidget {
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
          Image.asset("assets/latihan.jpg", fit: BoxFit.fitHeight),
          Padding(padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            child:  Text("Latihan Harian", style: TextStyle(fontSize: 26), textAlign: TextAlign.justify,),),

          Container(
            margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 30),
            child: Text('   Untuk mulai olahraga setiap hari, sebenarnya tidak perlu rencana yang muluk-muluk. Pada dasarnya, ada tiga jenis latihan yang bisa kita lakukan setiap hari untuk menjaga badan tetap fit.', style:  TextStyle(fontSize: 18), textAlign: TextAlign.justify),
          ),
          
          Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("1. Kardio",
                      style: TextStyle(color: Colors.white,
                          fontSize: 19)),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset("assets/kardio.jpg"),
                ),
               Text("   Kardio adalah jenis olahraga yang paling umum untuk membantu menurunkan berat badan, karena aktivitas ini sangat efektif dalam membakar lemak. Semakin tinggi intensitas kardio yang kita lakukan, maka semakin besar kalori yang akan terbakar. Olahraga kardio berfungsi untuk menguatkan otot jantung. Bila otot jantung kuat, maka pembuluh darah dapat mengalirkan darah lebih banyak dan lebih cepat sehingga bisa memberi oksigen lebih banyak ke dalam sel otot. Hal inilah yang memungkinkan sel untuk membakar lemak lebih banyak selama olahraga dan saat istirahat.", style: TextStyle(fontSize: 18), textAlign: TextAlign.justify,),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("2. Latihan Kekuatan",
                      style: TextStyle(color: Colors.white,
                          fontSize: 19)),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset("assets/kekuatan.jpg"),
                ),
                Text("   Latihan kekuatan tidak hanya untuk binaragawan saja. Pasalnya, latihan satu ini juga penting dilakukan setiap orang dari berbagai usia. Latihan kekuatan berfungsi untuk membangun dan mengencangkan otot sehingga bisa mendukung aktivitas sehari-hari. Beberapa pilihan latihan kekuatan yang bisa kita lakukan di rumah meliputi, sit-up, push-up, pull-up, squat, dan lunge. Tidak hanya itu, angkat beban menggunakan barbel ataupun dumbbel juga bisa jadi pilihan lainnya dari latihan kekuatan.", style: TextStyle(fontSize: 18), textAlign: TextAlign.justify,),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 30),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("3. Latihan Flaeksibilitas",
                      style: TextStyle(color: Colors.white,
                          fontSize: 19)),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset("assets/kelenturan.jpg"),
                ),
                Text("   Selain dua latihan yang sudah disebutkan di atas, latihan fleksibilitas juga idealnya dimasukkan ke dalam rutinitas olahraga setiap hari. Fleksibilitas alias kelenturan tubuh adalah bagian penting dari upaya menjaga kebugaran tubuh agar tetap berfungsi optimal. Tubuh yang lentur juga dapat membantu kita mencegah cedera, dan bahkan berperan sebagai tameng pelindung dari berbagai kondisi menyulitkan, seperti arthritis dan penyakit serius lainnya. Latihan fleksibilitas dilakukan agar otot-otot persendian tidak kaku dan dapat bergerak dengan leluasa tanpa adanya gangguan yang berati. Biasanya, latihan fleksibilitas dilakukan saat kita melakukan stretching (peregangan) setelah berolahraga, entah itu kardio ataupun kekuatan.", style: TextStyle(fontSize: 18), textAlign: TextAlign.justify,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
