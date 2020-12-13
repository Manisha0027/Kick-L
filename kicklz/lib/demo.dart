import 'package:flutter/material.dart';
//import 'package:sowmya/main.dart';

//void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("hello"),
          backgroundColor: Colors.black,
        ),
        body: 
        Image.asset("index.jpeg"),
      ),
    );
  }
}
