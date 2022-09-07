import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackthon/My_pages/pages.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

@override
Widget build(BuildContext context) {
  // TODO: implement build
  throw UnimplementedError();
}

class _SignUpState extends State<SignUp> {
  String name = "";
  bool changebutton = false;
  var _formKey = GlobalKey<FormState>();
  final FirstNameEditingController = new TextEditingController();
  final LastNameEditingController = new TextEditingController();
  final UserNameEditingController = new TextEditingController();
  final passwordEditingController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sign Up"),
        ),
        body: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Container(
                  height: 80,
                  width: double.maxFinite,
                  color: Color.fromARGB(255, 12, 192, 247),
                  child: Text(
                    "Register Here!",
                    style: GoogleFonts.oswald(fontSize: 48),
                    textAlign: TextAlign.center,
                  )),
              SizedBox(
                height: 40,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Form(
                    key: _formKey,
                    child: Column(children: [
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter First Name",
                          labelText: "First Name",
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter Last Name",
                          labelText: "Last Name",
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter User Name",
                          labelText: "User Name",
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Password",
                          labelText: "Password",
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () async {
                          setState(() {
                            changebutton = true;
                          });

                          await Future.delayed(
                            Duration(milliseconds: 300),
                          );
                          await Navigator.pushNamed(
                              context, MyPages.newprofile);
                          setState(() {
                            changebutton = false;
                          });
                        },
                        child: AnimatedContainer(
                            duration: Duration(milliseconds: 80),
                            height: 40,
                            width: changebutton ? 60 : 160,
                            alignment: Alignment.center,
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.deepPurpleAccent,
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ]),
                  ))
            ],
          ),
        ));
  }
}
