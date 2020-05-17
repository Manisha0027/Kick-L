import 'package:flutter/material.dart';
import 'package:kicklz/auth.dart';
import 'package:kicklz/home.dart';
import 'package:kicklz/login.dart';
import 'package:kicklz/user.dart';
import 'package:kicklz/wrapper.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
        value:AuthService().user,
          child: MaterialApp(
          
        debugShowCheckedModeBanner: false,
       
        home:Wrapper(),
      ),
    );
  }
}

