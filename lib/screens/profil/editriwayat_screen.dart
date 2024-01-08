import 'package:dashboardtemplate/core/core.dart';
import 'package:dashboardtemplate/screens/profil/profil_screen.dart';
import 'package:flutter/material.dart';

class EditProfilAnak extends StatefulWidget {
  @override
  _EditProfilAnakState createState() => _EditProfilAnakState();
}

class _EditProfilAnakState extends State<EditProfilAnak> {
  // Controller untuk mengambil nilai dari TextFormField
  final TextEditingController _alergiController = TextEditingController();
  final TextEditingController _golDarahController = TextEditingController();
  final TextEditingController _kepalaController = TextEditingController();
  final TextEditingController _rambutController = TextEditingController();
  final TextEditingController _mataController = TextEditingController();
  final TextEditingController _hidungController = TextEditingController();
  final TextEditingController _telingaController = TextEditingController();
  final TextEditingController _rggMulutController = TextEditingController();
  final TextEditingController _gigiController = TextEditingController();
  final TextEditingController _bibirLidahController = TextEditingController();
  final TextEditingController _tenggorokanController = TextEditingController();
  final TextEditingController _leherController = TextEditingController();
  final TextEditingController _dadaController = TextEditingController();
  final TextEditingController _tanganKKController = TextEditingController();
  final TextEditingController _alatKlmnController = TextEditingController();

  // Variabel untuk menyimpan nilai tanggal lahir dan jenis kelamin
  DateTime? _tanggalLahir;
  String? _jenisKelamin;

  // Fungsi untuk menampilkan dialog pemilihan tanggal
  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = (await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    ))!;

    if (picked != null && picked != _tanggalLahir) {
      setState(() {
        _tanggalLahir = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profil Anak'),
        // automaticallyImplyLeading: false,
        // leading: null,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 125.0, // Sesuaikan dengan lebar yang diinginkan
                    child: Text(
                      'Nama Lengkap',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0), // Jarak antara label dan TextField
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white, // Warna latar belakang TextField
                        borderRadius:
                            BorderRadius.circular(8.0), // Sudut yang dibulatkan
                      ),
                      child: TextField(
                        controller: _namaController,
                        decoration: InputDecoration(
                          hintText: 'Masukkan nama lengkap anak',
                          hintStyle:
                              TextStyle(color: Colors.grey), // Warna teks hint
                          border:
                              InputBorder.none, // Hapus garis border default
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 12.0), // Padding dalam TextField
                        ),
                        style:
                            TextStyle(color: Colors.grey), // Warna teks input
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 125.0, // Sesuaikan dengan lebar yang diinginkan
                    child: Text(
                      'Tempat, Tanggal Lahir',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0), // Jarak antara label dan TextField
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white, // Warna latar belakang TextField
                        borderRadius:
                            BorderRadius.circular(8.0), // Sudut yang dibulatkan
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              controller: _tempatLahirController,
                              decoration: InputDecoration(
                                hintText: 'Masukkan tempat lahir anak',
                                hintStyle: TextStyle(
                                    color: Colors.grey), // Warna teks hint
                                border: InputBorder
                                    .none, // Hapus garis border default
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16.0,
                                    vertical: 12.0), // Padding dalam TextField
                              ),
                              style: TextStyle(
                                  color: Colors.grey), // Warna teks input
                            ),
                          ),
                          GestureDetector(
                            onTap: () => _selectDate(context),
                            child: Container(
                              padding: EdgeInsets.all(12.0),
                              decoration: BoxDecoration(
                                color: Colors
                                    .white, // Sesuaikan dengan warna latar belakang yang diinginkan
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(8.0),
                                  bottomRight: Radius.circular(8.0),
                                ),
                              ),
                              child: Icon(Icons.calendar_today,
                                  color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 125.0, // Sesuaikan dengan lebar yang diinginkan
                    child: Text(
                      'NIK',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0), // Jarak antara label dan TextField
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white, // Warna latar belakang TextField
                        borderRadius:
                            BorderRadius.circular(8.0), // Sudut yang dibulatkan
                      ),
                      child: TextField(
                        controller: _nikController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'Masukkan NIK anak',
                          hintStyle:
                              TextStyle(color: Colors.grey), // Warna teks hint
                          border:
                              InputBorder.none, // Hapus garis border default
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 12.0), // Padding dalam TextField
                        ),
                        style:
                            TextStyle(color: Colors.grey), // Warna teks input
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 125.0, // Sesuaikan dengan lebar yang diinginkan
                    child: Text(
                      'Jenis Kelamin',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 'Laki-laki',
                        groupValue: _jenisKelamin,
                        onChanged: (value) {
                          setState(() {
                            _jenisKelamin = value.toString();
                          });
                        },
                      ),
                      Text(
                        'Laki-laki',
                        style: TextStyle(
                          color: _jenisKelamin == 'Laki-laki'
                              ? Colors.black
                              : Colors.black,
                        ),
                      ),
                      SizedBox(width: 16.0),
                      Radio(
                        value: 'Perempuan',
                        groupValue: _jenisKelamin,
                        onChanged: (value) {
                          setState(() {
                            _jenisKelamin = value.toString();
                          });
                        },
                      ),
                      Text(
                        'Perempuan',
                        style: TextStyle(
                          color: _jenisKelamin == 'Laki-laki'
                              ? Colors.black
                              : Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 125.0, // Sesuaikan dengan lebar yang diinginkan
                    child: Text(
                      'Alamat',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0), // Jarak antara label dan TextField
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white, // Warna latar belakang TextField
                        borderRadius:
                            BorderRadius.circular(8.0), // Sudut yang dibulatkan
                      ),
                      child: TextField(
                        controller: _alamatController,
                        decoration: InputDecoration(
                          hintText: 'Masukkan alamat lengkap',
                          hintStyle:
                              TextStyle(color: Colors.grey), // Warna teks hint
                          border:
                              InputBorder.none, // Hapus garis border default
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 12.0), // Padding dalam TextField
                        ),
                        style:
                            TextStyle(color: Colors.grey), // Warna teks input
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 125.0, // Sesuaikan dengan lebar yang diinginkan
                    child: Text(
                      'Nama Ibu',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0), // Jarak antara label dan TextField
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white, // Warna latar belakang TextField
                        borderRadius:
                            BorderRadius.circular(8.0), // Sudut yang dibulatkan
                      ),
                      child: TextField(
                        controller: _namaIbuController,
                        decoration: InputDecoration(
                          hintText: 'Masukkan nama ibu',
                          hintStyle:
                              TextStyle(color: Colors.grey), // Warna teks hint
                          border:
                              InputBorder.none, // Hapus garis border default
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 12.0), // Padding dalam TextField
                        ),
                        style:
                            TextStyle(color: Colors.grey), // Warna teks input
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 125.0, // Sesuaikan dengan lebar yang diinginkan
                    child: Text(
                      'Nama Bapak',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0), // Jarak antara label dan TextField
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white, // Warna latar belakang TextField
                        borderRadius:
                            BorderRadius.circular(8.0), // Sudut yang dibulatkan
                      ),
                      child: TextField(
                        controller: _namaBapakController,
                        decoration: InputDecoration(
                          hintText: 'Masukkan nama bapak',
                          hintStyle:
                              TextStyle(color: Colors.grey), // Warna teks hint
                          border:
                              InputBorder.none, // Hapus garis border default
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 12.0), // Padding dalam TextField
                        ),
                        style:
                            TextStyle(color: Colors.grey), // Warna teks input
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 125.0, // Sesuaikan dengan lebar yang diinginkan
                    child: Text(
                      'Nomor HP',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0), // Jarak antara label dan TextField
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white, // Warna latar belakang TextField
                        borderRadius:
                            BorderRadius.circular(8.0), // Sudut yang dibulatkan
                      ),
                      child: TextField(
                        controller: _nomorHpController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'Masukkan no. HP',
                          hintStyle:
                              TextStyle(color: Colors.grey), // Warna teks hint
                          border:
                              InputBorder.none, // Hapus garis border default
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 12.0), // Padding dalam TextField
                        ),
                        style:
                            TextStyle(color: Colors.grey), // Warna teks input
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 125.0, // Sesuaikan dengan lebar yang diinginkan
                    child: Text(
                      'Posyandu',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0), // Jarak antara label dan TextField
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white, // Warna latar belakang TextField
                        borderRadius:
                            BorderRadius.circular(8.0), // Sudut yang dibulatkan
                      ),
                      child: TextField(
                        controller: _posyanduController,
                        decoration: InputDecoration(
                          hintText: 'Masukkan nama posyandu',
                          hintStyle:
                              TextStyle(color: Colors.grey), // Warna teks hint
                          border:
                              InputBorder.none, // Hapus garis border default
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 12.0), // Padding dalam TextField
                        ),
                        style:
                            TextStyle(color: Colors.grey), // Warna teks input
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 125.0, // Sesuaikan dengan lebar yang diinginkan
                    child: Text(
                      'PAUD/TK/RA',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0), // Jarak antara label dan TextField
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white, // Warna latar belakang TextField
                        borderRadius:
                            BorderRadius.circular(8.0), // Sudut yang dibulatkan
                      ),
                      child: TextField(
                        controller: _paudController,
                        decoration: InputDecoration(
                          hintText: 'Masukkan nama sekolah',
                          hintStyle:
                              TextStyle(color: Colors.grey), // Warna teks hint
                          border:
                              InputBorder.none, // Hapus garis border default
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 12.0), // Padding dalam TextField
                        ),
                        style:
                            TextStyle(color: Colors.grey), // Warna teks input
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color(0xFFE29910)), // Warna ElevatedButton
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.symmetric(
                          horizontal: 100.0,
                          vertical: 10.0), // Lebarkan ukuran button
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            20.0), // Ubah nilai sesuai kebutuhan
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfilAnak(
                          nama: _namaController.text,
                          tempatLahir: _tempatLahirController.text,
                          tanggalLahir: _tanggalLahir,
                          nik: _nikController.text,
                          jenisKelamin: _jenisKelamin ?? '',
                          alamat: _alamatController.text,
                          namaIbu: _namaIbuController.text,
                          namaBapak: _namaBapakController.text,
                          nomorHp: _nomorHpController.text,
                          posyandu: _posyanduController.text,
                          paud: _paudController.text,
                        ),
                      ),
                    );
                  },
                  child: Text('Simpan'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
