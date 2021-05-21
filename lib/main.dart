import 'package:flutter/material.dart';
import 'package:liveasy_task/enterMobileNumber.dart';
import 'package:liveasy_task/selectProfile.dart';
import 'package:liveasy_task/verifyPhone.dart';
import 'package:liveasy_task/selectLanguage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Liveasy Task',
      debugShowCheckedModeBanner: false,
      home:SelectLanguage(),
      theme: ThemeData(
      accentColor: Colors.indigoAccent,
    ),
    );
  }
}

