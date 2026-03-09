import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Aplikasi kartu nama",
      home: const profileCard(),
    );
  }
}

class profileCard extends StatelessWidget{
  const profileCard({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body:  Center(
        //dibungkus dgn center agar kartu tetap ditengah,dan tetap bisa di scroll jika konten melebihi tinggi layar
        child: SingleChildScrollView(
          child:Container(
            margin:const EdgeInsets.all(20), //mencegah kartu menempel ketepi layar hp kecil
            padding: const EdgeInsets.all(30),
            width: 350,
            decoration: BoxDecoration(
              color:  Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color:Colors.black.withOpacity(0.1), //efek bayangan halus
                  spreadRadius: 2,
                  blurRadius: 15,
                  offset: const Offset(0, 5), //bayangan jatuh sedikit kebawah
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min, //sesuaikan tinggi kartu dengan konten
              children: const[
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage("data:image/jpeg;base64,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"),
                backgroundColor: Colors.transparent,
              ),
              //jarak margin bawah foto dan teks nama 
              SizedBox(height: 20),
              ],
            ),
          ),
        ),

    ),
    );
  }

}