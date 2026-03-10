import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Aplikasi kartu nama",
      home: const profileCard(),
    );
  }
}

// ignore: camel_case_types
class profileCard extends StatelessWidget {
  const profileCard({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        //dibungkus dgn center agar kartu tetap ditengah,dan tetap bisa di scroll jika konten melebihi tinggi layar
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(
              20,
            ), //mencegah kartu menempel ketepi layar hp kecil
            padding: const EdgeInsets.all(30),
            width: 350,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  // ignore: deprecated_member_use
                  color: Colors.black.withOpacity(0.1), //efek bayangan halus
                  spreadRadius: 2,
                  blurRadius: 15,
                  offset: const Offset(0, 5), //bayangan jatuh sedikit kebawah
                ),
              ],
            ),
            child: Column(
              mainAxisSize:
                  MainAxisSize.min, //sesuaikan tinggi kartu dengan konten
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8KUTCvpajEUZ_arWsbA9GUD6OwfhmzUCXZw&s",
                  ),
                  backgroundColor: Colors.transparent,
                ),
                //jarak margin bawah foto dan teks nama
                const SizedBox(height: 20),

                //teks nama
                const Text(
                  'Ica',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),

                const SizedBox(height: 5), //jarak margin bawah nama dan profesi
                //teks profesi
                const Text(
                  'Mahasiswa',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    letterSpacing: 1.5, //jarak antar huruf
                  ),
                ),
                const SizedBox(
                  height: 20,
                ), //jarak margin bawah profesi dan garis pembatas
                //garis pembatas
                Divider(
                  color: Colors.grey[300],
                  thickness: 1.5,
                  indent: 20, //jarak garis pembatas dari kiri
                  endIndent: 20, //jarak garis pembatas dari kanan
                ),

                const SizedBox(height: 10),

                //memanggil custom widget inforow  email
                const InfoRow(
                  icon: Icons.email,
                  waranaIcon: Colors.blueAccent,
                  teks: "icaaprilianikd@gmail.com",
                ),
                const SizedBox(height: 10),
                //memanggil custom widget inforow lokasi
                const InfoRow(
                  icon: Icons.location_on,
                  waranaIcon: Colors.redAccent,
                  teks: "Pamekasan, Jawa Timur",
                ),
                const SizedBox(height: 10),
                //memanggil custom widget universitas
                const InfoRow(
                  icon: Icons.school,
                  waranaIcon: Colors.green,
                  teks: "Universitas Islam Madura",
                ),
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//custom widget untuk row informasi
class InfoRow extends StatelessWidget{
  final IconData icon;
  final Color waranaIcon;
  final String teks;

  const InfoRow({
    super.key,
    required this.icon,
    required this.waranaIcon,
    required this.teks,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: Icon(
            icon,
            color: waranaIcon,
            size: 24,
          ),
        ),
        Text(
          teks,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black87,
            fontWeight: FontWeight.w500,
          ),
        ),

    ],
    );
  }

}