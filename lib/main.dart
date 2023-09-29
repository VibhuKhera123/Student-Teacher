import 'package:flutter/material.dart';
import 'package:student_teacher/auth/login.dart';


void main() async {
  runApp(MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    ));
}