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
      body: const Center(
        child: Text ("Scaffold dengan warna background abu-abu terang."),

    ),
    );
  }

}