import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:hackthon/My_pages/pages.dart';
import 'package:blinking_text/blinking_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    String name = "NGO";
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to Study Free"),
      ),
      body: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/welcome_image.png"),
                        fit: BoxFit.fill)),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  width: 400,
                  height: 100,
                  color: Colors.blue,
                  child: BlinkText(
                    "New User!\nRegister",
                    style: GoogleFonts.oswald(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    endColor: Colors.red,
                    duration: Duration(seconds: 1),
                    textAlign: TextAlign.center,
                  )),
              SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 40.0),
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MyPages.loginpage);
                      },
                      child: Text("Click To Login"),
                      style: TextButton.styleFrom(minimumSize: Size(160, 80)),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MyPages.signUp);
                      },
                      child: Text("Click To SignUp"),
                      style: TextButton.styleFrom(minimumSize: Size(160, 80)),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
