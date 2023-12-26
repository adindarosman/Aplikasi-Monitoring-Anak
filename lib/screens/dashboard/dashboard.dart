import 'package:dashboardtemplate/screens/buku_anak/6bulan_screen.dart';
import 'package:dashboardtemplate/screens/dashboard/widgets/header/header.dart';
import 'package:dashboardtemplate/screens/dashboard/widgets/my_files/my_files.dart';
import 'package:dashboardtemplate/screens/dashboard/widgets/recent_files/recent_files.dart';
import 'package:dashboardtemplate/screens/dashboard/widgets/storage_details/berat_details.dart';
import 'package:dashboardtemplate/screens/dashboard/widgets/storage_details/berattinggi_details.dart';
import 'package:dashboardtemplate/screens/dashboard/widgets/storage_details/kepala_details.dart';
import 'package:dashboardtemplate/screens/dashboard/widgets/storage_details/lengan_details.dart';
import 'package:dashboardtemplate/screens/dashboard/widgets/storage_details/tinggi_details.dart';

import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          Header(),
          SizedBox(height: 10.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    SizedBox(height: 5.0),
                    MyFiles(),
                    SizedBox(height: 20.0),
                    BeratTinggi_details(),
                    SizedBox(height: 10.0),
                    BeratUsia_details(),
                    SizedBox(height: 10.0),
                    TinggiUsia_details(),
                    SizedBox(height: 10.0),
                    KepalaUsia_details(),
                    SizedBox(height: 10.0),
                    LenganUsia_details(),
                    SizedBox(height: 10.0),
                    RecentFiles(),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
