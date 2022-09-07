import 'package:flutter/material.dart';
import 'package:hackthon/My_pages/pages.dart';
import 'package:hackthon/pages/Home_page.dart';
import 'package:hackthon/SignUp/Profile_Signup.dart';
import 'package:hackthon/SignUp/SignUp.dart';
import 'package:hackthon/pages/login.dart';
import 'package:hackthon/pages/login_page.dart';
// ignore: duplicate_import
//import 'package:google_fonts/google_fonts.dart';

import 'package:hackthon/pages/logint.dart';

void main() {
  runApp(const Studyfree());
}

class Studyfree extends StatelessWidget {
  const Studyfree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      initialRoute: "/home",
      routes: {
        MyPages.homepage: ((context) => const HomePage()),
        MyPages.loginpage: (context) => const LoginPage(),
        MyPages.signUp: (context) => const SignUp(),
        MyPages.newprofile: (context) => const NewProfile(),
        MyPages.homelogin: (context) => const LoginHome(),
        MyPages.loginteacher: (context) => const LoginTeacher(),
      },
    );
  }
}
