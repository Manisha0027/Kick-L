import 'package:flutter/material.dart';
//import 'package:sowmya/kicklhomepage.dart';
import 'kicklloginpage.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Logopage(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Container(
            child: Image.asset(
              "assets/mypic.jpg",
              width:500.0,
              height: 1000.0,
            ),
          ),
        ),
      ),
    );
  }
}
