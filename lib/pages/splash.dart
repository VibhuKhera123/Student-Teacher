import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hackthon/pages/Home_page.dart';
import 'package:hackthon/pages/login.dart';
import 'package:hackthon/pages/login_page.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetologin();
  }

  _navigatetologin() async {
    await Future.delayed(const Duration(milliseconds: 3000), () {});
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/unnamed.jpg"),
            const SizedBox(
              height: 150,
            ),
          ],
        ),
      ),
    );
  }
}
