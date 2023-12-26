import 'package:dashboardtemplate/screens/buku_anak/3bulan_screen.dart';
import 'package:dashboardtemplate/screens/buku_anak/6bulan_screen.dart';
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
                child: Text("Usia 29 Hari - 3 Bulan"),
              ),
              DropdownMenuItem<String>(
                value: "Usia 3 - 6 Bulan",
                child: Text("Usia 3 - 6 Bulan"),
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
              }
            },
            child: Text("Pilih"),
          ),
          // Add other widgets as needed
          // SizedBox(height: 20.0),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: BukuScreen(),
  ));
}
