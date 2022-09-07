import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackthon/My_pages/pages.dart';

class LoginTeacher extends StatelessWidget {
  const LoginTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text("Name of user"),
              ),
              ListTile(
                leading: const Icon(Icons.account_circle),
                title: const Text("Profile"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text("Settings"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.notification_add),
                title: const Text("Notification"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text("LogOut"),
                onTap: () {
                  Navigator.pushNamed(context, MyPages.homepage);
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
            title: Text(
          "Welcome",
          textAlign: TextAlign.center,
        ) //reference
            ),
        body: SingleChildScrollView(
          child: Column(children: [
            CircleAvatar(
              backgroundColor: Colors.blue,
              backgroundImage: AssetImage("assets/images/study_image.jpg"),
              radius: 80,
              child: Text(
                "Sample Image",
                style: GoogleFonts.oswald(fontSize: 30, color: Colors.brown),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
              child: Container(
                height: 50,
                width: double.maxFinite,
                color: Colors.blueGrey,
                child: Text(
                  "name of Teacher",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.oswald(fontSize: 30),
                ),
              ),
            ),
            Row(children: <Widget>[
              for (int i = 0; i < 2; i++)
                (Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    for (int i = 0; i < 10; i++)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, MyPages.homelogin);
                            },
                            child: Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 33, 166, 243),
                                  border:
                                      Border.all(color: Colors.red, width: 5),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Center(
                                  child: Text(
                                "Student Details",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                            )),
                      ),
                  ],
                )),
            ])
          ]),
        ));
  }
}
