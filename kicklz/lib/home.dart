import 'package:flutter/material.dart';
import 'package:kicklz/SpeakTheEmotion.dart';
import 'package:kicklz/auth.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Color(0xFF21BFBD),
        title: Text(
          "Live Ur Dream",
          style: TextStyle(
              fontFamily: 'Courgette', color: Colors.white, fontSize: 20.0),
        ),
        elevation: 0.0,
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
              onPressed: () async {
                await _auth.signOut();
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF21BFBD),
        child: Icon(
          Icons.alarm_add,
          color: Colors.white,
        ),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/backclock.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RaisedButton(
              focusElevation: 500.0,
              elevation: 200.0,
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SpeakTheEmotion()));
              },
              child: Text(
                "SPEAK THE EMOTION",
                style: TextStyle(
                  color: Colors.white,
                  //fontWeight: FontWeight.w600,
                  fontFamily: 'Courgette',
                  fontSize: 20,
                ),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              padding: EdgeInsets.all(40.0),
              color: Colors.grey.withOpacity(0.5),
            ),
            RaisedButton(
              focusElevation: 500.0,
              elevation: 200.0,
              onPressed: () {},
              child: Text(
                "ADD THE RYTHM",
                style: TextStyle(
                  color: Colors.white,
                  //fontWeight: FontWeight.w600,
                  fontFamily: 'Courgette',
                  fontSize: 20,
                ),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              padding: EdgeInsets.all(40.0),
              color: Colors.grey.withOpacity(0.5),
            ),
            RaisedButton(
              focusElevation: 500.0,
              elevation: 200.0,
              onPressed: () {},
              child: Text(
                "LINK THE SNAP",
                style: TextStyle(
                  color: Colors.white,
                  //fontWeight: FontWeight.w600,
                  fontFamily: 'Courgette',
                  fontSize: 20,
                ),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              padding: EdgeInsets.all(40.0),
              color: Colors.grey.withOpacity(0.5),
            ),
          ],
        ),
      ),
    );
  }
}
