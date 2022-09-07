import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackthon/My_pages/pages.dart';

class NewProfile extends StatefulWidget {
  const NewProfile({Key? key}) : super(key: key);

  @override
  State<NewProfile> createState() => _NewProfileState();
}

class _NewProfileState extends State<NewProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page"),
      ),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Column(children: [
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Full Name",
                  labelText: "Full Name",
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: ("Enter Mobile Number"),
                  labelText: ("Mobile Number"),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter State",
                  labelText: "State",
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Address",
                  labelText: "Address",
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Address",
                  labelText: "Address",
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Email",
                  labelText: "Email",
                ),
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: ElevatedButton(
                      child: const Text("SignUp as Teacher"),
                      onPressed: () {
                        Navigator.pushNamed(context, MyPages.loginteacher);
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: ElevatedButton(
                      child: const Text("SignUp as Student"),
                      onPressed: () {
                        Navigator.pushNamed(context, MyPages.homelogin);
                      },
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
