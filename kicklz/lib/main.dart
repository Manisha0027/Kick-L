import 'dart:isolate';

//import 'package:android_alarm_manager/android_alarm_manager.dart';
import 'package:flutter/material.dart';
//import 'package:sowmya/kicklloginpage.dart';
//import 'package:sowmya/goalpad.dart';
import 'kicklloginpage.dart';
import 'kicklhomepage.dart';
//import 'package:sowmya/splashscreen.dart';
//import 'package:sowmya/splashscreen.dart';
import 'splashscreen.dart';

Future<void> main() async {
  final int helloAlarmID = 0;
  // await AndroidAlarmManager.initialize();
  runApp(MyApp());
  // await AndroidAlarmManager.periodic(const Duration(seconds: 1), helloAlarmID, printHello);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'home',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Logopage()
    );
  }
}

void printHello() {
  final DateTime now = DateTime.now();
  print("Hello World Done $now");
}
