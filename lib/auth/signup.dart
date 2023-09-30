import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_teacher/auth/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _userName = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmPassword = TextEditingController();

  @override
  void initState() {
    _userName = TextEditingController();
    _email = TextEditingController();
    _password = TextEditingController();
    _confirmPassword = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _confirmPassword.dispose();
    _email.dispose();
    _password.dispose();
    _userName.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.amber[100]
            // gradient: SweepGradient(
            //   colors: [
            //     Color.fromARGB(255, 41, 247, 229),
            //     Color.fromARGB(255, 3, 244, 196),
            //     Color.fromARGB(255, 103, 216, 251),
            //     Color.fromARGB(255, 3, 152, 244),
            //   ],
            // ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 25,
              right: 25,
            ),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 3,
                  strokeAlign: BorderSide.strokeAlignCenter,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Sign Up",
                      style: GoogleFonts.preahvihear(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.cyan),
                    ),
                    TextField(
                      controller: _userName,
                      style: const TextStyle(color: Colors.white),
                      cursorColor: Colors.cyan,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.person,
                          color: Color.fromARGB(255, 30, 36, 208),
                        ),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        labelText: "User Name",
                        hintText: "unique user name",
                        hintStyle: TextStyle(color: Colors.cyan),
                        labelStyle: TextStyle(color: Colors.cyan),
                      ),
                    ),
                    TextField(
                      style: const TextStyle(color: Colors.white),
                      controller: _email,
                      cursorColor: Colors.amber.shade100,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.mail_outline_outlined,
                          color: Color.fromARGB(255, 30, 36, 208),
                        ),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        labelText: "Email",
                        hintText: "Enter your email",
                        hintStyle: TextStyle(color: Colors.cyan),
                        labelStyle: TextStyle(color: Colors.cyan),
                      ),
                    ),
                    TextField(
                      style: const TextStyle(color: Colors.white),
                      controller: _password,
                      cursorColor: Colors.cyan,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.password,
                          color: Color.fromARGB(255, 30, 36, 208),
                        ),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        labelText: "Password",
                        hintText: "New Password",
                        hintStyle: TextStyle(color: Colors.cyan),
                        labelStyle: TextStyle(color: Colors.cyan),
                      ),
                    ),
                    TextField(
                      style: const TextStyle(color: Colors.white),
                      controller: _confirmPassword,
                      cursorColor: Colors.cyan,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.password,
                          color: Color.fromARGB(255, 30, 36, 208),
                        ),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        labelText: "Confirm Passsword",
                        hintText: "Re enter password",
                        hintStyle: TextStyle(color: Colors.cyan),
                        labelStyle: TextStyle(color: Colors.cyan),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () async {},
                      style: OutlinedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(116, 59, 2, 1),
                      ),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.yellow,
                        ),
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: "Already Registered? ",
                        children: [
                          TextSpan(
                            text: "Login",
                            style: const TextStyle(
                              color: Colors.amberAccent,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LoginPage(),
                                  ),
                                );
                              },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
