import 'package:flutter/material.dart';
import 'package:kicklz/authenticate.dart';
import 'package:provider/provider.dart';
import 'package:kicklz/user.dart';
import 'package:kicklz/home.dart';



class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    
    if(user == null) {
      return Authenticate();
    }else{
      return Home();
    }
  }
}