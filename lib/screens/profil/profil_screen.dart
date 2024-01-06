import 'package:dashboardtemplate/screens/profil/editprofil_screen.dart';
import 'package:flutter/material.dart';

class ProfilAnak extends StatelessWidget {
  final String? nama;
  final String? tempatLahir;
  final DateTime? tanggalLahir;
  final String? nik;
  final String? jenisKelamin;
  final String? alamat;
  final String? namaIbu;
  final String? namaBapak;
  final String? nomorHp;
  final String? posyandu;
  final String? paud;

  ProfilAnak({
    this.nama,
    this.tempatLahir,
    this.tanggalLahir,
    this.nik,
    this.jenisKelamin,
    this.alamat,
    this.namaIbu,
    this.namaBapak,
    this.nomorHp,
    this.posyandu,
    this.paud,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Anak'),
        backgroundColor: Color(0xFFE29910),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        color: Color(0xFFFFEDCC),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildText('Nama Anak', nama?.toString() ?? 'kosong'),
              _buildText('Tempat Lahir', tempatLahir?.toString() ?? 'kosong'),
              _buildText('Tanggal Lahir', tanggalLahir?.toString() ?? 'kosong'),
              _buildText('NIK', nik?.toString() ?? 'kosong'),
              _buildText('Jenis Kelamin', jenisKelamin?.toString() ?? 'kosong'),
              _buildText('Alamat', alamat?.toString() ?? 'kosong'),
              _buildText('Nama Ibu', namaIbu?.toString() ?? 'kosong'),
              _buildText('Nama Bapak', namaBapak?.toString() ?? 'kosong'),
              _buildText('Nomor HP', nomorHp?.toString() ?? 'kosong'),
              _buildText('Posyandu', posyandu?.toString() ?? 'kosong'),
              _buildText('PAUD/TK/RA', paud?.toString() ?? 'kosong'),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            // Navigasi ke halaman EditProfilAnak
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EditProfilAnak()),
            );
          },
          style: ElevatedButton.styleFrom(
            primary: Color.fromARGB(
                255, 246, 184, 69), // Ganti dengan warna yang diinginkan
          ),
          child: Text('Edit Profil'),
        ),
      ),
    );
  }

  Widget _buildText(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: Container(
        decoration: BoxDecoration(
          // color: Color.fromARGB(255, 255, 255, 255),
          // borderRadius: BorderRadius.circular(8.0),
          border: Border(
            bottom: BorderSide(
              color: Color.fromARGB(
                  255, 69, 69, 69), // Ganti dengan warna border yang diinginkan
              width: 1.0, // Ganti dengan ketebalan border yang diinginkan
              style:
                  BorderStyle.solid, // Ganti dengan gaya border yang diinginkan
            ),
          ),
        ),
        padding: EdgeInsets.all(5.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 120.0,
              child: Text('$label:', style: TextStyle(color: Colors.black)),
            ),
            SizedBox(width: 8.0),
            Expanded(
              child: Text(value.isNotEmpty ? value : 'kosong',
                  style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
