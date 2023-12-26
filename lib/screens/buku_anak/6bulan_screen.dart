import 'package:flutter/material.dart';

class maksEnamBuku extends StatefulWidget {
  @override
  maksEnamBukuState createState() => maksEnamBukuState();
}

class maksEnamBukuState extends State<maksEnamBuku> {
  List<Map<String, dynamic>> questions = [
    {
      'number': 1,
      'question': 'Bayi bisa berbalik dari telungkup ke telentang?'
    },
    {
      'number': 2,
      'question': 'Bayi bisa mengangkat kepala secara mandiri hingga tegak 90˚?'
    },
    {
      'number': 3,
      'question':
          'Bayi bayi bisa mempertahankan posisi kepala tetap tegak dan stabil?'
    },
    {
      'number': 4,
      'question': 'Bayi bisa menggenggam mainan kecil atau mainan bertangkai?'
    },
    {
      'number': 5,
      'question': 'Bayi bisa meraih benda yang ada dalam jangkauannya?'
    },
    {'number': 6, 'question': 'Bayi bisa mengamati tangannya sendiri?'},
    {'number': 7, 'question': 'Bayi berusaha memperluas pandangan?'},
    {
      'number': 8,
      'question': 'Bayi mengarahkan matanya pada benda-benda kecil?'
    },
    {
      'number': 9,
      'question': 'Bayi mengeluarkan suara gembira bernada tinggi atau memekik?'
    },
    {
      'number': 10,
      'question':
          'Bayi tersenyum ketika melihat mainan/ gambar yang menarik saat bermain sendiri?'
    },
  ];
  List<bool?> selectedValues = List.generate(10, (index) => null);
  List<DataRow> _buildRows() {
    List<DataRow> rows = [];
    for (int i = 0; i < questions.length; i++) {
      rows.add(DataRow(
        color: MaterialStateColor.resolveWith(
          (states) {
            // Use different colors for even and odd rows
            return i % 2 == 0
                ? Color.fromARGB(255, 255, 220, 167) ?? Colors.transparent
                : Color.fromARGB(255, 255, 250, 236) ?? Colors.transparent;
          },
        ),
        cells: [
          DataCell(
            Container(
              padding: EdgeInsets.symmetric(vertical: 8),
              constraints: BoxConstraints(
                maxWidth: double
                    .infinity, // Allow the container to expand horizontally
                minHeight: 60.0, // Set the minimum height
              ),
              child: Text(questions[i]['number'].toString()),
            ),
          ),
          DataCell(
            Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              width: 245, // Adjust the width as needed
              constraints: BoxConstraints(
                maxWidth: double
                    .infinity, // Allow the container to expand horizontally
                minHeight: 60.0, // Set the minimum height
              ),
              child: Wrap(
                children: [
                  Text(questions[i]['question']),
                ],
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
        title: Text('Pemantauan Bayi Usia 3 - 6 Bulan'),
        backgroundColor: Color(0xFFE29910),
        centerTitle: true,
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back),
        //   onPressed: () {
        //     Navigator.of(context).pop();
        //   },
        // ),
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
                  DataColumn(label: Text('No')),
                  DataColumn(label: Text('Pertanyaan')),
                  DataColumn(label: Text('Ya')),
                  DataColumn(label: Text('Tidak')),
                ],
                rows: _buildRows(),
              ),
            );
          },
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: maksEnamBuku(),
  ));
}
