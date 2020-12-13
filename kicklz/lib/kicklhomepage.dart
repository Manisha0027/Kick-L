import 'package:flutter/material.dart';
import 'addtherythm.dart';

import 'goalpad.dart';
import 'alarmcolumnpage.dart';
import 'package:image_picker/image_picker.dart';
import 'linksnap.dart';
import 'speaktheemotion.dart';

class Lazy extends StatefulWidget {
  @override
  _LazyState createState() => _LazyState();
}

class _LazyState extends State<Lazy> {
  //get color => null;

  @override
  Widget build(BuildContext context) {
    //var black87 = Colors.black87;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "LIVE YOUR DREAM",
          style: TextStyle(color: Colors.white,
        ),),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black87,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Set(),
            ),
          );
        },
        child: Icon(Icons.alarm_add),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.black,
              height: 150,
              width: 350,
              child:
                  //mainaxisalignment:MainAxisAlignment.center,
                  Padding(
                padding: EdgeInsets.all(16.0),

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/46710/pexels-photo-46710.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
                      radius: 30.0,
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "Shoot Your Setback",
                        style: TextStyle(color: Colors.white70, fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
                // padding: EdgeInsets.all(20.0) ,
              ),
            ),
            Container(
              height: 490,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  ListTile(
                    title: Text("Home"),
                    leading: Icon(Icons.home),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Goalpad()));
                    },
                    title: Text("Goalpad"),
                    leading: Icon(Icons.note_add),
                  ),
                  ListTile(
                    title: Text("About App"),
                    leading: Icon(Icons.touch_app),
                  ),
                  ListTile(
                    title: Text("Settings"),
                    leading: Icon(Icons.settings),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Container(
        width: 430,
       // color: Colors.white,
        decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/clocks.jpg"),
        fit: BoxFit.cover),),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RaisedButton(
              focusElevation: 500.0,
              elevation: 200.0,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Speaktheemotion(),
                  ),
                );
              },
              child: Text(
                "SPEAK THE EMOTION",
                style: TextStyle(
                  color: Colors.white,

                  //fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  fontSize: 20,
                ),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              padding: EdgeInsets.all(40.0),
              color: Colors.black38,
            ),
            RaisedButton(
              elevation: 200.0,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Addtherythm(),
                  ),
                );
              },
              // wil
              child: Text(
                "ADD THE RYTHM",
                style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.normal,
                    fontSize: 20),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              padding: EdgeInsets.all(40.0),
              color: Colors.black38,
            ),
            RaisedButton(
                elevation: 200.0,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LinktheSnap(),
                    ),
                  );
                },
                child: Text("LINK THE SNAP",
                    style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.normal,
                        fontSize: 20)),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                padding: EdgeInsets.all(40.0),
                color: Colors.black38),
          ],
        ),
      ),
    );
  }
}
