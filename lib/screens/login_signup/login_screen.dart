import 'package:dashboardtemplate/core/core.dart';
import 'package:dashboardtemplate/screens/login_signup/firebase_auth_services.dart';
import 'package:dashboardtemplate/screens/login_signup/form_container_widget.dart';
import 'package:dashboardtemplate/screens/login_signup/signup_screen.dart';
import 'package:dashboardtemplate/screens/login_signup/toast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isSignin = false;

  final FirebaseAuthService _auth = FirebaseAuthService();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Stack(
            children: [
              Positioned(
                left: 84,
                top: 33,
                child: Text(
                  'SI BUNGA MATAHARI',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF282828),
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.05,
                    letterSpacing: 0.30,
                  ),
                ),
              ),
              Positioned(
                left: 103,
                top: 100,
                child: Text(
                  'PUSKESMAS MENTENG',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF282828),
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.09,
                    letterSpacing: 0.30,
                  ),
                ),
              ),
              Positioned(
                left: 10,
                top: 58,
                child: SizedBox(
                  width: 359,
                  height: 20,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'S',
                          style: TextStyle(
                            color: Color(0xFFFECB00),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0.14,
                            letterSpacing: 0.30,
                          ),
                        ),
                        TextSpan(
                          text: 'ISTEM ',
                          style: TextStyle(
                            color: Color(0xFF282828),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0.14,
                            letterSpacing: 0.30,
                          ),
                        ),
                        TextSpan(
                          text: 'I',
                          style: TextStyle(
                            color: Color(0xFFFECB00),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0.14,
                            letterSpacing: 0.30,
                          ),
                        ),
                        TextSpan(
                          text: 'NTEGRASI PERTUM',
                          style: TextStyle(
                            color: Color(0xFF282828),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0.14,
                            letterSpacing: 0.30,
                          ),
                        ),
                        TextSpan(
                          text: 'BU',
                          style: TextStyle(
                            color: Color(0xFFFECB00),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0.14,
                            letterSpacing: 0.30,
                          ),
                        ),
                        TextSpan(
                          text: 'HAN, PERKEMBA',
                          style: TextStyle(
                            color: Color(0xFF282828),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0.14,
                            letterSpacing: 0.30,
                          ),
                        ),
                        TextSpan(
                          text: 'NGA',
                          style: TextStyle(
                            color: Color(0xFFFECB00),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0.14,
                            letterSpacing: 0.30,
                          ),
                        ),
                        TextSpan(
                          text: 'N,\n',
                          style: TextStyle(
                            color: Color(0xFF282828),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0.14,
                            letterSpacing: 0.30,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Positioned(
                left: 10,
                top: 78,
                child: SizedBox(
                  width: 359,
                  height: 20,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'DAN PE',
                          style: TextStyle(
                            color: Color(0xFF282828),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0.14,
                            letterSpacing: 0.30,
                          ),
                        ),
                        TextSpan(
                          text: 'MA',
                          style: TextStyle(
                            color: Color(0xFFFFCB00),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0.14,
                            letterSpacing: 0.30,
                          ),
                        ),
                        TextSpan(
                          text: 'N',
                          style: TextStyle(
                            color: Color(0xFF282828),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0.14,
                            letterSpacing: 0.30,
                          ),
                        ),
                        TextSpan(
                          text: 'TA',
                          style: TextStyle(
                            color: Color(0xFFFECC00),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0.14,
                            letterSpacing: 0.30,
                          ),
                        ),
                        TextSpan(
                          text: 'UAN KESE',
                          style: TextStyle(
                            color: Color(0xFF282828),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0.14,
                            letterSpacing: 0.30,
                          ),
                        ),
                        TextSpan(
                          text: 'HA',
                          style: TextStyle(
                            color: Color(0xFFFFCB00),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0.14,
                            letterSpacing: 0.30,
                          ),
                        ),
                        TextSpan(
                          text: 'TAN DI',
                          style: TextStyle(
                            color: Color(0xFF282828),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0.14,
                            letterSpacing: 0.30,
                          ),
                        ),
                        TextSpan(
                          text: 'RI',
                          style: TextStyle(
                            color: Color(0xFFFECB00),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0.14,
                            letterSpacing: 0.30,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Positioned(
                left: 53,
                top: 104,
                child: Container(
                  width: 279,
                  height: 428,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/matahari.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 50,
                top: 410,
                child: Container(
                  width: 280,
                  padding: EdgeInsets.all(16.0),
                  child: Form(
                    child: Column(
                      children: [
                        FormContainerWidget(
                          controller: _emailController,
                          hintText: "Email",
                          isPasswordField: false,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        FormContainerWidget(
                          controller: _passwordController,
                          hintText: "Kata Sandi",
                          isPasswordField: true,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          onTap: _signIn,
                          child: Container(
                            width: double.infinity,
                            height: 45,
                            decoration: BoxDecoration(
                              color: AppColors.secondaryColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                                child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Belum punya akun?"),
                            SizedBox(
                              width: 5,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUpPage()),
                                  (route) => false,
                                );
                              },
                              child: Text(
                                "Buat Akun",
                                style: TextStyle(
                                  color: AppColors.secondaryColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _signIn() async {
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signInWithEmailAndPassword(email, password);

    if (user != null) {
      showToast(message: "User is succesfully Sign In");
      Navigator.pushNamed(context, "/home");
    } else {
      showToast(message: "Error Sign In page");
    }
  }
}
