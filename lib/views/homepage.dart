import 'package:flutter/material.dart';
import 'package:student_teacher/common/custom_app_bar.dart';
import 'package:student_teacher/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomAppBar(title: "Home Page"),
          SizedBox(
            height: h * 0.1,
          ),
          Card(
            elevation: 2,
            child: Column(
              children: [
                Image.network(
                    "https://imgs.search.brave.com/YuURFlMn0gTr-E7cpdpEyBrycdj6Q0ZzgF2bKZoKDBY/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5zcHJvdXRzb2Np/YWwuY29tL3VwbG9h/ZHMvMjAyMi8wNi9w/cm9maWxlLXBpY3R1/cmUuanBlZw"),
                const Divider(),
                Text(
                  "Name: ",
                  style: subText,
                ),
                const Divider(),
                Text(
                  "Subject",
                  style: subText,
                ),
                const Divider(),
                Text(
                  "Form Of study",
                  style: subText,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
