import 'package:flutter/material.dart';
import 'kicklhomepage.dart';

class Logopage extends StatefulWidget {
  @override
  _LogopageState createState() => _LogopageState();
}

class _LogopageState extends State<Logopage> {
  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return Scaffold(
     // backgroundColor: Colors.white,
    
      body:
              Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: <Widget>[
             
            new Image.asset(
              'assets/images/cl.jpeg',
              width: size.width,
              height: size.height,
              fit: BoxFit.fill,
            ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter Name",
                    labelText: "Name",
                  ),
                  keyboardType: TextInputType.text,
                  //obscureText: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter Email/Phone",
                    labelText: "Email/Phone",
                  ),
                  keyboardType: TextInputType.text,
                  //obscureText: true,
                ),
              ),
              RaisedButton(
                onPressed: () {
                 // Navigator.push(
                   // context,
                   // MaterialPageRoute(
                  //    builder: (context) => Lazy(),
                    //),
                  //);
                },
                child: Text(
                  "Save",
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
                color: Colors.black,
              ),
            ],
          ),
            
      
    );
  }
}
