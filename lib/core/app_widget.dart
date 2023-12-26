import 'package:dashboardtemplate/controllers/MenuController.dart';
import 'package:dashboardtemplate/core/core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/main/main_screen.dart';

class AppWidget extends StatefulWidget {
  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    AppIcons.loadCache();
    AppImages.loadCache(context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DashboardTemplate",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: AppColors.primaryColor,
        scaffoldBackgroundColor: AppColors.backgroundColor,
        textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme.apply(bodyColor: AppColors.white)),
        canvasColor: AppColors.secondaryColor,
      ),
      home: MultiProvider(providers: [
        ChangeNotifierProvider<CustomMenuController>(
            create: (context) => CustomMenuController())
      ], child: MainScreen()),
    );
  }
}
