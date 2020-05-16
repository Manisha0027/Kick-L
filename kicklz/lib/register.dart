import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xFF21BFBD),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 40.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              children: <Widget>[
                Text(
                  "Kick",
                  style: TextStyle(
                      fontFamily: 'Courgette',
                      color: Colors.white,
                      
                      fontSize: 40.0),
                ),
                Text(
                  "L",
                  style: TextStyle(
                      fontFamily: 'KaushanScript',
                      fontWeight: FontWeight.bold,
                      color: Colors.teal[800],
                      fontSize: 40.0),
                ),
                SizedBox(width: 100.0,),
                 RaisedButton(
                    elevation: 20.0,
                    color: Colors.teal[700],
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0)),
                    onPressed: () {},
                  ),

                
              ],
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Container(
              height: 500.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(75.0),
                    bottomLeft: Radius.circular(75.0)),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20.0,),
                  Text("Sign Up",
                  style: TextStyle(
                     fontFamily: 'KaushanScript',
                      color: Colors.teal[700],
                      
                      fontSize: 40.0
                  ),),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 50.0, left: 20.0, right: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        labelText: "Email",
                        labelStyle:
                            TextStyle(color: Colors.teal, fontSize: 20.0),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, left: 20.0, right: 20.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        labelText: "Password",
                        labelStyle:
                            TextStyle(color: Colors.teal, fontSize: 20.0),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal),
                        ),
                      ),
                    ),
                  
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  RaisedButton(
                    elevation: 20.0,
                    color: Colors.teal[700],
                    child: Text(
                      "Register",
                      style: TextStyle(color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0)),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      
      
    );
  }
}