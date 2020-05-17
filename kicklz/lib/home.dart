import 'package:flutter/material.dart';
import 'package:kicklz/auth.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final AuthService _auth  =  AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer:Drawer(
        
       ),
    appBar: AppBar(
      backgroundColor: Color(0xFF21BFBD),
     
      title: Text("Live Ur Dream",
      style: TextStyle(fontFamily: 'Courgette',
      color: Colors.white,
      fontSize: 20.0),
     ),
    elevation:0.0,
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: RaisedButton(
                      elevation: 20.0,
                      color: Colors.teal[700],
                      child: Text(
                        "logout",
                        style: TextStyle(color: Colors.white),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)),
                      onPressed: () async{
                        await _auth.signOut();
                      },
                    ),
      ),
    ],
    ),
    body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/backclock.jpg'),
          fit: BoxFit.cover,
          ),
      ),
      
    ),
      
    );
  }
}