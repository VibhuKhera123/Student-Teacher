import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackthon/My_pages/pages.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController usernameController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Align(
            alignment: Alignment.topCenter,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    width: 400,
                    height: 80,
                    color: Colors.cyan,
                    child: Text(
                      "Enter your details",
                      textAlign: TextAlign.center,
                      style:
                          GoogleFonts.oswald(fontSize: 30, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 40.0),
                    child: Form(
                      child: Column(
                        children: [
                          TextFormField(
                            autofocus: false,
                            controller: usernameController,
                            keyboardType: TextInputType.name,
                            onSaved: (value) {
                              usernameController.text = value!;
                            },
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                                hintText: "Enter user name",
                                labelText: "User Name"),
                          ),
                          TextFormField(
                            autofocus: false,
                            controller: passwordController,
                            onSaved: (value) {
                              passwordController.text = value!;
                            },
                            textInputAction: TextInputAction.done,
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: "Enter password",
                                labelText: "Password"),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, MyPages.homelogin);
                            },
                            child: Text("login"),
                            style: TextButton.styleFrom(
                                minimumSize: Size(160, 40)),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )));
  }
}
