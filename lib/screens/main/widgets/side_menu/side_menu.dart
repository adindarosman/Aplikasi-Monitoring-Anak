import 'package:dashboardtemplate/controllers/MenuController.dart';
import 'package:dashboardtemplate/core/core.dart';
import 'package:dashboardtemplate/screens/artikel/artikel_screen.dart';
import 'package:dashboardtemplate/screens/buku_anak/3bulan_screen.dart';
import 'package:dashboardtemplate/screens/konsultasi/konsultasi_screen.dart';
import 'package:dashboardtemplate/screens/main/main_screen.dart';
import 'package:dashboardtemplate/screens/main/widgets/drawer_list_tile/drawer_list_tile.dart';
import 'package:dashboardtemplate/screens/profil/profil_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../buku_anak/buku_screen.dart';
import '../../../dashboard/dashboard.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset(AppImages.logo),
            ),
            // DrawerListTile(
            //   title: "Home",
            //   icon: AppIcons.menuDashboard,
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => DashboardScreen(),
            //       ),
            //     );
            //   },
            // ),
            DrawerListTile(
              title: "Profil Anak",
              icon: AppIcons.menuProfile,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilAnak(),
                  ),
                );
              },
            ),
            DrawerListTile(
              title: "Buku Anak",
              icon: AppIcons.menuDoc,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BukuScreen(),
                  ),
                );
              },
            ),
            DrawerListTile(
              title: "Artikel",
              icon: AppIcons.menuTran,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ArticleScreen(),
                  ),
                );
              },
            ),
            DrawerListTile(
              title: "Konsultasi",
              icon: AppIcons.menuNotification,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => KonsultasiScreen(),
                  ),
                );
              },
            ),
            // DrawerListTile(
            //   title: "Task",
            //   icon: AppIcons.menuTask,
            //   onTap: () {},
            // ),

            // DrawerListTile(
            //   title: "Store",
            //   icon: AppIcons.menuStore,
            //   onTap: () {},
            // ),

            // DrawerListTile(
            //   title: "Settings",
            //   icon: AppIcons.menuSetting,
            //   onTap: () {},
            // ),
          ],
        ),
      ),
    );
  }
}
