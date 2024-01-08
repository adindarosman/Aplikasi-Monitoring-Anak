import 'package:dashboardtemplate/core/app_widget.dart';
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
  final String? alergi;
  final String? golDarah;
  final String? kepala;
  final String? rambut;
  final String? mata;
  final String? hidung;
  final String? telinga;
  final String? ronggaMulut;
  final String? gigi;
  final String? bibirLidah;
  final String? tenggorokan;
  final String? leher;
  final String? dada;
  final String? tanganKK;
  final String? alatKlmn;

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
    this.alergi,
    this.golDarah,
    this.kepala,
    this.rambut,
    this.mata,
    this.hidung,
    this.telinga,
    this.ronggaMulut,
    this.gigi,
    this.bibirLidah,
    this.tenggorokan,
    this.leher,
    this.dada,
    this.tanganKK,
    this.alatKlmn,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Anak'),
        backgroundColor: Color(0xFFE29910),
        centerTitle: true,
        leading: null,
        automaticallyImplyLeading: false,
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
              SizedBox(height: 10),
              Text(
                "Riwayat Kesehatan",
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              _buildText('Alergi Obat', alergi?.toString() ?? 'kosong'),
              _buildText('Golongan Darah', golDarah?.toString() ?? 'kosong'),
              _buildText('Kepala', kepala?.toString() ?? 'kosong'),
              _buildText('Rambut', rambut?.toString() ?? 'kosong'),
              _buildText('Mata', mata?.toString() ?? 'kosong'),
              _buildText('Hidung', hidung?.toString() ?? 'kosong'),
              _buildText('Telinga', telinga?.toString() ?? 'kosong'),
              _buildText('Rongga Mulut', ronggaMulut?.toString() ?? 'kosong'),
              _buildText('Gigi', gigi?.toString() ?? 'kosong'),
              _buildText('Bibir dan Lidah', bibirLidah?.toString() ?? 'kosong'),
              _buildText('Tenggorokan', tenggorokan?.toString() ?? 'kosong'),
              _buildText('Leher', leher?.toString() ?? 'kosong'),
              _buildText('Dada', dada?.toString() ?? 'kosong'),
              _buildText('Tangan & kuku, Kaki & kuku',
                  tanganKK?.toString() ?? 'kosong'),
              _buildText('Alat Kelamin', alatKlmn?.toString() ?? 'kosong'),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                // Navigasi ke halaman Dashboard atau halaman lain yang diinginkan
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => AppWidget()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFE29910),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      20.0), // Sesuaikan dengan keinginan Anda
                ),
              ),
              icon: const Icon(Icons.arrow_left),
              label: Text('Home'),
            ),
            ElevatedButton(
              child: Text(' Edit Riwayat Kes.'),
              onPressed: () {
                // Navigasi ke halaman EditProfilAnak
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EditProfilAnak()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFE29910),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      20.0), // Sesuaikan dengan keinginan Anda
                ),
              ),
            ),
            ElevatedButton(
              child: Text('Edit Profil'),
              onPressed: () {
                // Navigasi ke halaman EditProfilAnak
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EditProfilAnak()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFE29910),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      20.0), // Sesuaikan dengan keinginan Anda
                ),
              ),
            ),
          ],
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
