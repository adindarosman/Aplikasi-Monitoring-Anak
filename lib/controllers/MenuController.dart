import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/dashboard/dashboard.dart';
import '../screens/dashboard/widgets/storage_details/berat_details.dart';
import '../screens/main/widgets/side_menu/side_menu.dart';

class CustomMenuController extends ChangeNotifier {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  void controlMenu() {
    if (!_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!.openDrawer();
    }
  }
}
