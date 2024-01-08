import 'package:dashboardtemplate/controllers/MenuController.dart';
import 'package:dashboardtemplate/core/core.dart';
import 'package:dashboardtemplate/screens/artikel/artikel_screen.dart';
import 'package:dashboardtemplate/screens/buku_anak/buku_screen.dart';
import 'package:dashboardtemplate/screens/dashboard/dashboard.dart';
import 'package:dashboardtemplate/screens/konsultasi/konsultasi_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Provider.of<CustomMenuController>(context).scaffoldKey,
      // drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 5,
              child: DashboardScreen(),
            )
          ],
        ),
      ),
      //bottom navigator
      bottomNavigationBar: Container(
        height: 70, // Sesuaikan dengan tinggi yang diinginkan
        color: AppColors
            .secondaryColor, // Sesuaikan dengan warna latar belakang yang diinginkan
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  IconButton(
                    icon: const Icon(Icons.home),
                    color: Colors.white,
                    onPressed: () {
                      // Navigator.pushReplacement(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => AppWidget()),
                      // );
                    },
                  ),
                  Text(
                    'Home',
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    icon: const Icon(Icons.book_outlined),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => BukuScreen()),
                      );
                    },
                  ),
                  Text(
                    'Pemantauan Anak',
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    icon: const Icon(Icons.article_outlined),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ArticleScreen()),
                      );
                    },
                  ),
                  Text(
                    'Artikel',
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    icon: const Icon(Icons.chat_bubble_outline),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => KonsultasiScreen()),
                      );
                    },
                  ),
                  Text(
                    'Konsultasi',
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
