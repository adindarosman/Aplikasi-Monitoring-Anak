import 'package:dashboardtemplate/core/core.dart';
import 'package:dashboardtemplate/screens/dashboard/dashboard.dart';
import 'package:dashboardtemplate/screens/login_signup/login_screen.dart';
import 'package:dashboardtemplate/screens/main/main_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(AppWidget());
// }

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyB3te-Wf8Oiz8Ord5nljdfzh9os-P2PRKE",
        appId: "1:573713430790:web:a5f0b4b08f40db78184687",
        messagingSenderId: "573713430790",
        projectId: "anak-mude",
        // Your web Firebase config options
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SI BUNGA MATAHARI',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => AppWidget(),
        '/login': (context) => LoginPage()
      },
    );
  }
}
