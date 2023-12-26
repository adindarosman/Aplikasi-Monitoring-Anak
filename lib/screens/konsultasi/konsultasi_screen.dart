import 'package:flutter/material.dart';

class KonsultasiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Konsultasi'),
        backgroundColor: Color(0xFFE29910),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        color: Color(0xFFFFEDCC),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Text(
              "Sehubungan dengan pelayanan yang kami berikan, apabila Anda memerlukan bantuan atau informasi lebih lanjut, kami mengundang Anda untuk mengunjungi Unit Pelayanan SDIDTK di Lantai 2 Puskesmas Menteng.\nHubungi kami melalui nomor HP: 085779580000 untuk mendapatkan bantuan langsung.\nJam praktek kami adalah setiap Senin hingga Kamis, pukul 07.30-13.30 WIB, dan pada hari Jumat, pukul 07.30-14.00 WIB.\nTerima kasih atas perhatian dan kerjasama Anda. Kami siap membantu Anda dengan layanan terbaik.",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ),
      ),
    );
  }
}
