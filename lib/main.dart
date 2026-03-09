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
              Text("kartu putih"), 
              ],
            ),
          ),
        ),

    ),
    );
  }

}