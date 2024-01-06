import 'package:flutter/material.dart';

class enamTahunBuku extends StatefulWidget {
  @override
  _enamTahunBukuState createState() => _enamTahunBukuState();
}

class _enamTahunBukuState extends State<enamTahunBuku> {
  List<Map<String, dynamic>> questions = [
    {'number': 1, 'question': 'Anak bisa berjalan lurus?'},
    {
      'number': 2,
      'question': 'Anak bisa berdiri dengan 1 kaki selama 11 detik?'
    },
    {
      'number': 3,
      'question':
          'Anak bisa menggambar dengan 6 bagian, menggambar orang lengkap?'
    },
    {
      'number': 4,
      'question': 'Anak bisa menangkap bola kecil dengan kedua tangan?'
    },
    {'number': 5, 'question': 'Anak bisa menggambar segi empat?'},
    {'number': 6, 'question': 'Anak bisa mengerti arti lawan kata?'},
    {
      'number': 7,
      'question':
          'Anak bisa mengerti pembicaraan yang menggunakan 7 kata atau lebih?'
    },
    {
      'number': 8,
      'question':
          'Anak bisa menjawab pertanyaan tentang benda terbuat dari apa dan kegunaannya?'
    },
    {
      'number': 9,
      'question': 'Anak bisa mengenal angka, bisa menghitung angka 5 -10?'
    },
    {'number': 10, 'question': 'Anak bisa mengenal warna-warni?'},
    {'number': 11, 'question': 'Anak bisa mengungkapkan simpati?'},
    {'number': 12, 'question': 'Anak bisa mengikuti aturan permainan?'},
    {'number': 13, 'question': 'Anak bisa berpakaian sendiri tanpa dibantu?'},
  ];
  List<bool?> selectedValues = List.generate(13, (index) => null);
  List<DataRow> _buildRows() {
    List<DataRow> rows = [];
    for (int i = 0; i < questions.length; i++) {
      rows.add(DataRow(
        color: MaterialStateColor.resolveWith(
          (states) {
            // Use different colors for even and odd rows
            return i % 2 == 0
                ? Color.fromARGB(255, 255, 205, 130) ?? Colors.transparent
                : Color.fromARGB(255, 255, 250, 237) ?? Colors.transparent;
          },
        ),
        cells: [
          DataCell(
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8),
                constraints: BoxConstraints(
                  maxWidth: double.infinity,
                  minHeight: 60.0,
                ),
                child: Text(
                  questions[i]['number'].toString(),
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          DataCell(
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                width: 245,
                constraints: BoxConstraints(
                  maxWidth: double.infinity,
                  minHeight: 60.0,
                ),
                child: Wrap(
                  children: [
                    Text(
                      questions[i]['question'],
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          DataCell(
            Container(
              padding: EdgeInsets.symmetric(vertical: 8),
              width: 25,
              constraints: BoxConstraints(
                maxWidth: double
                    .infinity, // Allow the container to expand horizontally
                minHeight: 60.0, // Set the minimum height
              ),
              child: Radio(
                value: true,
                groupValue: selectedValues[i],
                onChanged: (value) {
                  setState(() {
                    selectedValues[i] = value as bool?;
                  });
                },
                fillColor:
                    MaterialStateColor.resolveWith((Set<MaterialState> states) {
                  if (states.contains(MaterialState.selected)) {
                    return Colors.black; // Warna ketika dicentang
                  } else {
                    return Colors.black; // Warna ketika tidak dicentang
                  }
                }),
              ),
            ),
          ), // Jawaban Ya
          DataCell(
            Container(
              padding: EdgeInsets.symmetric(vertical: 8),
              width: 25,
              constraints: BoxConstraints(
                maxWidth: double
                    .infinity, // Allow the container to expand horizontally
                minHeight: 60.0, // Set the minimum height
              ),
              child: Radio(
                value: false,
                groupValue: selectedValues[i],
                onChanged: (value) {
                  setState(() {
                    selectedValues[i] = value as bool?;
                  });
                },
                fillColor:
                    MaterialStateColor.resolveWith((Set<MaterialState> states) {
                  if (states.contains(MaterialState.selected)) {
                    return Colors.black; // Warna ketika dicentang
                  } else {
                    return Colors.black; // Warna ketika tidak dicentang
                  }
                }),
              ),
            ),
          ), // Jawaban Tidak
        ],
      ));
    }
    return rows;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Usia 5 - 6 Tahun'),
        backgroundColor: Color(0xFFE29910),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                border: TableBorder(// Specify the bottom border
                    ),
                horizontalMargin: 10,
                columnSpacing: constraints.maxWidth / 20, // Adjust as needed
                columns: [
                  DataColumn(
                      label: Text('No', style: TextStyle(color: Colors.black))),
                  DataColumn(
                      label: Text('Pertanyaan',
                          style: TextStyle(color: Colors.black))),
                  DataColumn(
                      label: Text('Ya', style: TextStyle(color: Colors.black))),
                  DataColumn(
                      label:
                          Text('Tidak', style: TextStyle(color: Colors.black))),
                ],
                rows: _buildRows(),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            // Handle submit button click
          },
          style: ElevatedButton.styleFrom(
            primary:
                const Color.fromARGB(255, 255, 180, 66), // Set warna oranye
          ),
          child: Text("Submit"),
        ),
      ),
    );
  }
}
