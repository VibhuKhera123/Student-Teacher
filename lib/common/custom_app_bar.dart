import 'package:flutter/material.dart';
import 'package:student_teacher/constants.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget {
  String title;
  CustomAppBar({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Container(
      height: h * 0.1,
      width: w,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 15.0, // soften the shadow
            spreadRadius: 5.0, //extend the shadow
            offset: Offset(
              5.0, // Move to right 5  horizontally
              5.0, // Move to bottom 5 Vertically
            ),
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: h * 0.05,
          left: w * 0.25,
        ),
        child: Text(
          title,
          style: headingText,
        ),
      ),
    );
  }
}
