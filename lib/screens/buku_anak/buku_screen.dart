import 'package:dashboardtemplate/screens/buku_anak/12bulan_screen.dart';
import 'package:dashboardtemplate/screens/buku_anak/18bulan_screen.dart';
import 'package:dashboardtemplate/screens/buku_anak/24bulan_screen.dart';
import 'package:dashboardtemplate/screens/buku_anak/2tahun_screen.dart';
import 'package:dashboardtemplate/screens/buku_anak/3bulan_screen.dart';
import 'package:dashboardtemplate/screens/buku_anak/3tahun_screen.dart';
import 'package:dashboardtemplate/screens/buku_anak/4tahun_screen.dart';
import 'package:dashboardtemplate/screens/buku_anak/5tahun_screen.dart';
import 'package:dashboardtemplate/screens/buku_anak/6bulan_screen.dart';
import 'package:dashboardtemplate/screens/buku_anak/9bulan_screen.dart';
import 'package:dashboardtemplate/screens/dashboard/widgets/header/header.dart';
import 'package:dashboardtemplate/screens/dashboard/widgets/search_field/search_field.dart';
import 'package:flutter/material.dart';

class BukuScreen extends StatefulWidget {
  @override
  _BukuScreenState createState() => _BukuScreenState();
}

class _BukuScreenState extends State<BukuScreen> {
  String selectedAge = "Usia 29 Hari - 3 Bulan"; // Default selected age

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pemantauan Bayi'),
        backgroundColor: Color(0xFFE29910),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 20.0),
          AgeField(
            userName: "Nathan Beska",
            birthDate: DateTime.utc(2022, 1, 28),
          ),
          SizedBox(height: 30.0),
          Container(
            padding: EdgeInsets.all(2.0), // Tambahkan padding sesuai kebutuhan
            margin: EdgeInsets.symmetric(
                vertical: 2.0), // Tambahkan margin sesuai kebutuhan
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromARGB(255, 255, 213, 123), // Warna garis border
                width: 1.0, // Lebar border
              ),
              borderRadius: BorderRadius.circular(10.0), // Radius sudut border
            ),
            child: SizedBox(
              height: 70.0,
              width: 200,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Jika Pada Usia Anak,\nHari > 15 = Bulan +1\n1 Tahun = 12 Bulan',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 20.0),
          DropdownButton<String>(
            value: selectedAge,
            items: [
              DropdownMenuItem<String>(
                value: "Usia 29 Hari - 3 Bulan",
                child: Text(
                  "Usia 29 Hari - 3 Bulan",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              DropdownMenuItem<String>(
                value: "Usia 3 - 6 Bulan",
                child: Text(
                  "Usia 3 - 6 Bulan",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              DropdownMenuItem<String>(
                value: "Usia 6 - 9 Bulan",
                child: Text(
                  "Usia 6 - 9 Bulan",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              DropdownMenuItem<String>(
                value: "Usia 9 - 12 Bulan",
                child: Text(
                  "Usia 9 - 12 Bulan",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              DropdownMenuItem<String>(
                value: "Usia 12 - 18 Bulan",
                child: Text(
                  "Usia 12 - 18 Bulan",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              DropdownMenuItem<String>(
                value: "Usia 18 - 24 Bulan",
                child: Text(
                  "Usia 18 - 24 Bulan",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              DropdownMenuItem<String>(
                value: "Usia 2 - 3 Tahun",
                child: Text(
                  "Usia 2 - 3 Tahun",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              DropdownMenuItem<String>(
                value: "Usia 3 - 4 Tahun",
                child: Text(
                  "Usia 3 - 4 Tahun",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              DropdownMenuItem<String>(
                value: "Usia 4 - 5 Tahun",
                child: Text(
                  "Usia 4 - 5 Tahun",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              DropdownMenuItem<String>(
                value: "Usia 5 - 6 Tahun",
                child: Text(
                  "Usia 5 - 6 Tahun",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
            onChanged: (String? newValue) {
              if (newValue != null) {
                setState(() {
                  selectedAge = newValue;
                });
              }
            },
          ),
          ElevatedButton(
            onPressed: () {
              if (selectedAge == "Usia 29 Hari - 3 Bulan") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => maksTigaBlnBuku(),
                  ),
                );
              } else if (selectedAge == "Usia 3 - 6 Bulan") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => maksEnamBuku(),
                  ),
                );
              } else if (selectedAge == "Usia 6 - 9 Bulan") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => enamkeSembilanBuku(),
                  ),
                );
              } else if (selectedAge == "Usia 9 - 12 Bulan") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => sembilankeDuablsBuku(),
                  ),
                );
              } else if (selectedAge == "Usia 12 - 18 Bulan") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => delapanBelasBuku(),
                  ),
                );
              } else if (selectedAge == "Usia 18 - 24 Bulan") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => duaempatBuku(),
                  ),
                );
              } else if (selectedAge == "Usia 2 - 3 Tahun") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => duatahunBuku(),
                  ),
                );
              } else if (selectedAge == "Usia 3 - 4 Tahun") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => tigaTahunBuku(),
                  ),
                );
              } else if (selectedAge == "Usia 4 - 5 Tahun") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => empatTahunBuku(),
                  ),
                );
              } else if (selectedAge == "Usia 5 - 6 Tahun") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => enamTahunBuku(),
                  ),
                );
              }
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(
                    255, 255, 184, 30) // Warna latar belakang tombol
                ),
            child: Text("Pilih"),
          ),
          // Add other widgets as needed
          // SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
